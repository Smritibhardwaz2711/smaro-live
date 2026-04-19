import { useRef } from "react";
import { io, Socket } from "socket.io-client";

const socket: Socket = io("http://localhost:5000", {
  transports: ["websocket"], // ✅ important
});

export const useTranscription = () => {
  const mediaRecorderRef = useRef<MediaRecorder | null>(null);

  const startRecording = async (userId: string, meetingId: string) => {
    try {
      console.log("🎤 START RECORDING");

      // ✅ join room
      // socket.emit("join-room", { meetingId, userId });

      const stream = await navigator.mediaDevices.getUserMedia({
        audio: true,
      });

      const mediaRecorder = new MediaRecorder(stream, {
        mimeType: "audio/webm;codecs=opus",
      });

      mediaRecorderRef.current = mediaRecorder;

      mediaRecorder.ondataavailable = async (event) => {
        if (event.data.size > 0) {
          console.log("🎤 sending audio");

          const arrayBuffer = await event.data.arrayBuffer();

          socket.emit("audio-chunk", arrayBuffer);
        }
      };

      mediaRecorder.start(250); // ✅ real-time chunks
    } catch (err) {
      console.error("Mic error:", err);
    }
  };

  const stopRecording = () => {
    console.log("🛑 STOP RECORDING");
    mediaRecorderRef.current?.stop();
  };

  return { startRecording, stopRecording, socket };
};