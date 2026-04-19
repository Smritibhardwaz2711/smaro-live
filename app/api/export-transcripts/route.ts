import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { RowDataPacket } from "mysql2";
import JSZip from "jszip";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const meetingId = searchParams.get("meetingId");

    if (!meetingId) {
      return NextResponse.json({ error: "Missing meetingId" }, { status: 400 });
    }

    // ✅ Fetch transcripts from DB
    const [rows] = await db.execute<RowDataPacket[]>(
      `SELECT user_id, text, created_at 
       FROM transcripts 
       WHERE meeting_id = ?
       ORDER BY created_at ASC`,
      [meetingId]
    );

    // ✅ Group by user
    const grouped: Record<string, string[]> = {};

    rows.forEach((row: any) => {
      if (!grouped[row.user_id]) {
        grouped[row.user_id] = [];
      }

    //   grouped[row.user_id].push(
    //     `[${row.created_at}] ${row.text}`
    //   );

    grouped[row.user_id].push(row.text);
    });

    // ✅ Create ZIP
    const zip = new JSZip();

    Object.keys(grouped).forEach((userId) => {
      const safeName = userId.replace(/[^a-z0-9]/gi, "_");
      const content = grouped[userId].join("\n");

      zip.file(`${safeName}.txt`, content);
    });

    const zipBuffer = await zip.generateAsync({ type: "nodebuffer" });

    return new NextResponse(zipBuffer, {
      headers: {
        "Content-Type": "application/zip",
        "Content-Disposition": "attachment; filename=transcripts.zip",
      },
    });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "Failed to export" }, { status: 500 });
  }
}