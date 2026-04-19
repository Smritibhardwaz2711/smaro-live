
// import { NextRequest, NextResponse } from "next/server";
// import { db } from "@/lib/db";

// export async function POST(req: NextRequest) {
//   const headers = {
//     "Access-Control-Allow-Origin": "*",
//     "Access-Control-Allow-Methods": "POST, OPTIONS",
//     "Access-Control-Allow-Headers": "Content-Type",
//   };

//   if (req.method === "OPTIONS") {
//     return NextResponse.json({}, { headers });
//   }

//   try {
//     const { audio, userId, meetingId } = await req.json();

//     console.log("✅ API HIT - Audio size:", audio?.length);

//     if (!audio) {
//       return NextResponse.json(
//         { error: "No audio data" },
//         { status: 400, headers }
//       );
//     }

//     if (audio.length < 1000) {
//       console.log("⚠️ Audio too small, skipping...");
//       return NextResponse.json({ transcript: "" }, { headers });
//     }

//     if (!process.env.DEEPGRAM_API_KEY) {
//       return NextResponse.json(
//         { error: "Missing Deepgram API key" },
//         { status: 500, headers }
//       );
//     }

//     console.log("🔊 Calling Deepgram...");

//     const response = await fetch(
//       "https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true",
//       {
//         method: "POST",
//         headers: {
//           Authorization: `Token ${process.env.DEEPGRAM_API_KEY}`,
//           "Content-Type": "audio/webm;codecs=opus",
//         },
//         body: Buffer.from(audio, "base64"),
//       }
//     );

//     if (!response.ok) {
//       const errorText = await response.text();
//       console.error("❌ Deepgram error:", errorText);

//       return NextResponse.json(
//         { error: "Deepgram failed" },
//         { status: 500, headers }
//       );
//     }

//     const data = await response.json();

//     const transcript =
//       data.results?.channels[0]?.alternatives[0]?.transcript || "";

//     console.log("💬 Transcript:", transcript);

//     // ✅ INSERT INTO DATABASE
//     if (transcript) {
//       await db.execute(
//         `INSERT INTO transcripts (meeting_id, user_id, text, created_at)
//          VALUES (?, ?, ?, NOW())`,
//         [meetingId, userId, transcript]
//       );

//       console.log("✅ Saved to DB");
//     }

//     return NextResponse.json({ transcript }, { headers });
//   } catch (error) {
//     console.error("❌ API Error:", error);

//     return NextResponse.json(
//       { error: "Transcription failed" },
//       { status: 500, headers }
//     );
//   }
// }








// // import { NextRequest, NextResponse } from "next/server";
// // import { db } from "@/lib/db";
// // import OpenAI from "openai";

// // const openai = new OpenAI({
// //   apiKey: process.env.OPENAI_API_KEY!,
// // });

// // export async function POST(req: NextRequest) {
// //   const headers = {
// //     "Access-Control-Allow-Origin": "*",
// //     "Access-Control-Allow-Methods": "POST, OPTIONS",
// //     "Access-Control-Allow-Headers": "Content-Type",
// //   };

// //   if (req.method === "OPTIONS") {
// //     return NextResponse.json({}, { headers });
// //   }

// //   try {
// //     const { audio, userId, meetingId } = await req.json();

// //     console.log("✅ Whisper API HIT");

// //     if (!audio) {
// //       return NextResponse.json(
// //         { error: "No audio data" },
// //         { status: 400, headers }
// //       );
// //     }

// //     // 🔥 Convert base64 → buffer → file
// //     const audioBuffer = Buffer.from(audio, "base64");

// //     const file = new File([audioBuffer], "audio.webm", {
// //       type: "audio/webm",
// //     });

// //     console.log("🔊 Sending to Whisper...");

// //     // ✅ WHISPER API CALL
// //     const response = await openai.audio.transcriptions.create({
// //       file: file,
// //       model: "gpt-4o-mini-transcribe", // fast + cheap
// //     });

// //     const transcript = response.text;

// //     console.log("💬 Transcript:", transcript);

// //     // ✅ SAVE TO MYSQL
// //     if (transcript) {
// //       await db.execute(
// //         `INSERT INTO transcripts (meeting_id, user_id, text, created_at)
// //          VALUES (?, ?, ?, NOW())`,
// //         [meetingId, userId, transcript]
// //       );

// //       console.log("✅ Saved to DB");
// //     }

// //     return NextResponse.json({ transcript }, { headers });
// //   } catch (error) {
// //     console.error("❌ Whisper Error:", error);

// //     return NextResponse.json(
// //       { error: "Transcription failed" },
// //       { status: 500, headers }
// //     );
// //   }
// // }




















// import { NextRequest, NextResponse } from "next/server";
// import { db } from "@/lib/db";
// import { RowDataPacket } from "mysql2";


// export async function POST(req: NextRequest) {
//   const headers = {
//     "Access-Control-Allow-Origin": "*",
//     "Access-Control-Allow-Methods": "POST, OPTIONS",
//     "Access-Control-Allow-Headers": "Content-Type",
//   };

//   if (req.method === "OPTIONS") {
//     return NextResponse.json({}, { headers });
//   }

//   try {
//     const { audio, userId, meetingId } = await req.json();

//     console.log("✅ API HIT - Audio size:", audio?.length);

//     if (!audio) {
//       return NextResponse.json(
//         { error: "No audio data" },
//         { status: 400, headers }
//       );
//     }

//     if (audio.length < 1000) {
//       console.log("⚠️ Audio too small, skipping...");
//       return NextResponse.json({ transcript: "" }, { headers });
//     }

//     if (!process.env.DEEPGRAM_API_KEY) {
//       return NextResponse.json(
//         { error: "Missing Deepgram API key" },
//         { status: 500, headers }
//       );
//     }

//     console.log("🔊 Calling Deepgram...");

//     const response = await fetch(
//       "https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true",
//       {
//         method: "POST",
//         headers: {
//           Authorization: `Token ${process.env.DEEPGRAM_API_KEY}`,
//           "Content-Type": "audio/webm;codecs=opus",
//         },
//         body: Buffer.from(audio, "base64"),
//       }
//     );

//     if (!response.ok) {
//       const errorText = await response.text();
//       console.error("❌ Deepgram error:", errorText);

//       return NextResponse.json(
//         { error: "Deepgram failed" },
//         { status: 500, headers }
//       );
//     }

//     const data = await response.json();

//     const transcript =
//       data.results?.channels[0]?.alternatives[0]?.transcript || "";

//     console.log("💬 Transcript:", transcript);

//     // ✅ INSERT INTO DATABASE
//     // if (transcript) {
//     //   await db.execute(
//     //     `INSERT INTO transcripts (meeting_id, user_id, text, created_at)
//     //      VALUES (?, ?, ?, NOW())`,
//     //     [meetingId, userId, transcript]
//     //   );

//     //   console.log("✅ Saved to DB");
//     // }

//     const [rows] = await db.execute<RowDataPacket[]>(
//         `SELECT id FROM transcripts 
//         WHERE meeting_id = ? 
//         AND text = ?
//         AND created_at > NOW() - INTERVAL 5 SECOND
//         LIMIT 1`,
//         [meetingId, transcript]
//       );

//     // ✅ INSERT INTO DATABASE (WITH DUPLICATE CHECK)
//       if (transcript && transcript.trim().length > 1) {
//         const [rows] = await db.execute<RowDataPacket[]>(
//           `SELECT id FROM transcripts 
//           WHERE meeting_id = ? 
//           AND text = ?
//           AND created_at > NOW() - INTERVAL 5 SECOND
//           LIMIT 1`,
//           [meetingId, transcript]
//         );

//         if (rows.length === 0) {
//           await db.execute(
//             `INSERT INTO transcripts (meeting_id, user_id, text, created_at)
//             VALUES (?, ?, ?, NOW())`,
//             [meetingId, userId, transcript]
//           );

//           console.log("✅ Saved to DB");
//         } else {
//           console.log("⚠️ Duplicate skipped");
//         }
//       }
        
//     return NextResponse.json({ transcript }, { headers });
//   } catch (error) {
//     console.error("❌ API Error:", error);

//     return NextResponse.json(
//       { error: "Transcription failed" },
//       { status: 500, headers }
//     );
//   }
// }










import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { RowDataPacket } from "mysql2";

export async function POST(req: NextRequest) {
  const headers = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Access-Control-Allow-Headers": "Content-Type",
  };

  if (req.method === "OPTIONS") {
    return NextResponse.json({}, { headers });
  }

  try {
    const { audio, userId, meetingId } = await req.json();

    console.log("✅ API HIT - Audio size:", audio?.length);

    if (!audio) {
      return NextResponse.json(
        { error: "No audio data" },
        { status: 400, headers }
      );
    }

    if (audio.length < 1000) {
      console.log("⚠️ Audio too small, skipping...");
      return NextResponse.json({ transcript: "" }, { headers });
    }

    // ============================
    // ✅ INSERT INTO MEETINGS TABLE
    // ============================
    const [meetingRows] = await db.execute<RowDataPacket[]>(
      `SELECT id FROM meetings WHERE id = ? LIMIT 1`,
      [meetingId]
    );

    if (meetingRows.length === 0) {
      await db.execute(
        `INSERT INTO meetings (id, created_at, topic)
         VALUES (?, NOW(), ?)`,
        [meetingId, "Live Meeting"]
      );

      console.log("✅ Meeting created");
    }

    // ============================
    // ✅ INSERT INTO PARTICIPANTS
    // ============================
    const [participantRows] = await db.execute<RowDataPacket[]>(
      `SELECT id FROM participants 
       WHERE meeting_id = ? AND user_id = ? 
       LIMIT 1`,
      [meetingId, userId]
    );

    if (participantRows.length === 0) {
      await db.execute(
        `INSERT INTO participants (meeting_id, user_id, joined_at)
         VALUES (?, ?, NOW())`,
        [meetingId, userId]
      );

      console.log("✅ Participant added");
    }

    // ============================
    // 🔊 DEEPGRAM CALL
    // ============================
    const response = await fetch(
      "https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true",
      {
        method: "POST",
        headers: {
          Authorization: `Token ${process.env.DEEPGRAM_API_KEY}`,
          "Content-Type": "audio/webm;codecs=opus",
        },
        body: Buffer.from(audio, "base64"),
      }
    );

    if (!response.ok) {
      const errorText = await response.text();
      console.error("❌ Deepgram error:", errorText);

      return NextResponse.json(
        { error: "Deepgram failed" },
        { status: 500, headers }
      );
    }

    const data = await response.json();

    const transcript =
      data.results?.channels[0]?.alternatives[0]?.transcript || "";

    console.log("💬 Transcript:", transcript);

    // ============================
    // ✅ INSERT TRANSCRIPT (NO DUPLICATE)
    // ============================
    if (transcript && transcript.trim().length > 1) {
      const [rows] = await db.execute<RowDataPacket[]>(
        `SELECT id FROM transcripts 
         WHERE meeting_id = ? 
         AND text = ?
         AND created_at > NOW() - INTERVAL 5 SECOND
         LIMIT 1`,
        [meetingId, transcript]
      );

      if (rows.length === 0) {
        await db.execute(
          `INSERT INTO transcripts (meeting_id, user_id, text, created_at)
           VALUES (?, ?, ?, NOW())`,
          [meetingId, userId, transcript]
        );

        console.log("✅ Saved to transcripts");
      } else {
        console.log("⚠️ Duplicate skipped");
      }
    }

    return NextResponse.json({ transcript }, { headers });

  } catch (error) {
    console.error("❌ API Error:", error);

    return NextResponse.json(
      { error: "Transcription failed" },
      { status: 500, headers }
    );
  }
}