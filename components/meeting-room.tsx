
"use client";

import {
  CallControls,
  CallParticipantsList,
  CallStatsButton,
  CallingState,
  PaginatedGridLayout,
  SpeakerLayout,
  useCallStateHooks,
  useCall,
} from "@stream-io/video-react-sdk";

import { useUser } from "@clerk/nextjs";
import { useEffect, useRef, useState } from "react";

import { LayoutList, Users } from "lucide-react";
import { useRouter, useSearchParams } from "next/navigation";

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { cn } from "@/lib/utils";

import { EndCallButton } from "./end-call-button";
import { Loader } from "./loader";

type CallLayoutType = "grid" | "speaker-left" | "speaker-right";

export const MeetingRoom = () => {
  const router = useRouter();
  const searchParams = useSearchParams();

  const { user } = useUser();
  const call = useCall();

  const [showParticipants, setShowParticipants] = useState(false);
  const [layout, setLayout] = useState<CallLayoutType>("speaker-left");

  const [captions, setCaptions] = useState<
    { user: string; text: string }[]
  >([]);

  const mediaRecorderRef = useRef<MediaRecorder | null>(null);

  const { useCallCallingState } = useCallStateHooks();
  const callingState = useCallCallingState();

  const isPersonalRoom = !!searchParams.get("personal");

  // ✅ JOIN CALL
  useEffect(() => {
    if (!call || !user) return;

    const joinCall = async () => {
      await call.join({
        data: {
          user_id: user.id,
          name:
            user.fullName ||
            user.primaryEmailAddress?.emailAddress ||
            "Guest",
        },
      });
    };

    joinCall();
  }, [call, user]);

  // 🎤 TRANSCRIPTION (FINAL FIXED VERSION)
  useEffect(() => {
    if (!user) return;

    const startRecording = async () => {
      try {
        const stream = await navigator.mediaDevices.getUserMedia({
          audio: true,
        });

        const mediaRecorder = new MediaRecorder(stream, {
          mimeType: "audio/webm;codecs=opus",
        });

        mediaRecorderRef.current = mediaRecorder;

        let audioChunks: Blob[] = [];

        mediaRecorder.ondataavailable = (event) => {
          if (event.data.size > 0) {
            audioChunks.push(event.data);
          }
        };

        mediaRecorder.onstop = async () => {
          const blob = new Blob(audioChunks, {
            type: "audio/webm;codecs=opus",
          });

          const reader = new FileReader();

          reader.onloadend = async () => {
            const base64Audio = (reader.result as string).split(",")[1];

            try {
              const res = await fetch("/api/deepgram", {
                method: "POST",
                headers: {
                  "Content-Type": "application/json",
                },
                // body: JSON.stringify({ audio: base64Audio }),
                body: JSON.stringify({
                    audio: base64Audio,
                    userId:
                      user.fullName ||
                      user.primaryEmailAddress?.emailAddress ||
                      "User",
                    meetingId: call?.id || "meeting_123",
                  }),
              });

              if (!res.ok) {
                console.error("❌ API error:", await res.text());
                return;
              }

              const data = await res.json();

              if (data.transcript) {
                const name =
                  user.fullName ||
                  user.primaryEmailAddress?.emailAddress ||
                  "User";

                setCaptions((prev) => [
                  ...prev,
                  { user: name, text: data.transcript },
                ]);

                call?.sendCustomEvent({
                  type: "caption",
                  user: name,
                  text: data.transcript,
                });
              }
            } catch (err) {
              console.error("❌ Fetch error:", err);
            }
          };

          reader.readAsDataURL(blob);

          audioChunks = [];
        };

        // 🔥 RECORD EVERY 3 SECONDS
        mediaRecorder.start();

        const interval = setInterval(() => {
          if (mediaRecorder.state === "recording") {
            mediaRecorder.stop();
            mediaRecorder.start();
          }
        }, 3000);

        return () => {
          clearInterval(interval);
          mediaRecorder.stop();
        };
      } catch (error) {
        console.error("❌ Mic error:", error);
      }
    };

    startRecording();
  }, [user, call]);

  // 📡 RECEIVE CAPTIONS
  useEffect(() => {
    if (!call) return;

    const handleEvent = (event: any) => {
      if (event.type === "caption") {
        setCaptions((prev) => [
          ...prev,
          { user: event.user, text: event.text },
        ]);
      }
    };

    call.on("custom", handleEvent);

    return () => {
      call.off("custom", handleEvent);
    };
  }, [call]);

  if (callingState !== CallingState.JOINED) return <Loader />;

  const CallLayout = () => {
    switch (layout) {
      case "grid":
        return <PaginatedGridLayout />;
      case "speaker-right":
        return <SpeakerLayout participantsBarPosition="left" />;
      default:
        return <SpeakerLayout participantsBarPosition="right" />;
    }
  };

  return (
    <div className="relative h-screen w-full overflow-hidden pt-4 text-white">
      <div className="relative flex size-full items-center justify-center">
        <div className="flex size-full max-w-[1000px] items-center">
          <CallLayout />
        </div>

        <div
          className={cn("ml-2 hidden h-[calc(100vh_-_86px)]", {
            "show-block": showParticipants,
          })}
        >
          <CallParticipantsList onClose={() => setShowParticipants(false)} />
        </div>
      </div>

      {/* 🎤 CAPTIONS */}
      <div className="absolute bottom-20 w-full flex justify-center pointer-events-none">
        <div className="bg-black/70 text-white px-4 py-2 rounded-lg max-w-xl w-full text-center">
          {captions.slice(-3).map((c, i) => (
            <p key={i}>
              <span className="font-bold">{c.user}: </span>
              {c.text}
            </p>
          ))}
        </div>
      </div>

      <div className="fixed bottom-0 flex w-full flex-wrap items-center justify-center gap-5">
        <CallControls onLeave={() => router.push("/")} />

        <DropdownMenu>
          <div className="flex items-center">
            <DropdownMenuTrigger className="cursor-pointer rounded-2xl bg-[#19232D] px-4 py-2 hover:bg-[#4C535B]">
              <LayoutList size={20} />
            </DropdownMenuTrigger>
          </div>
          <DropdownMenuContent className="border-dark-1 bg-dark-1 text-white">
            {["Grid", "Speaker Left", "Speaker Right"].map((item, i) => (
              <div key={i}>
                <DropdownMenuItem
                  onClick={() =>
                    setLayout(
                      item.toLowerCase().replace(" ", "-") as CallLayoutType
                    )
                  }
                >
                  {item}
                </DropdownMenuItem>
                <DropdownMenuSeparator />
              </div>
            ))}
          </DropdownMenuContent>
        </DropdownMenu>

        <CallStatsButton />


        <button
          onClick={async () => {
            try {
              const meetingId = call?.id || "meeting_123";

              const res = await fetch(
                `/api/export-transcripts?meetingId=${meetingId}`
              );

              if (!res.ok) {
                alert("Failed to download");
                return;
              }

              const blob = await res.blob();
              const url = window.URL.createObjectURL(blob);

              const a = document.createElement("a");
              a.href = url;
              a.download = "transcripts.zip";
              a.click();

              window.URL.revokeObjectURL(url);
            } catch (err) {
              console.error(err);
            }
          }}
        >
          <div className="cursor-pointer rounded-2xl bg-green-600 px-4 py-2 hover:bg-green-700">
            Download Transcripts
          </div>
        </button>






        <button onClick={() => setShowParticipants((prev) => !prev)}>
          <div className="cursor-pointer rounded-2xl bg-[#19232D] px-4 py-2 hover:bg-[#4C535B]">
            <Users size={20} />
          </div>
        </button>

        {!isPersonalRoom && <EndCallButton />}
      </div>
    </div>
  );
};