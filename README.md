# Smaro Live 🎥🚀

Modern AI-powered video conferencing platform built with Next.js 14, TypeScript, Tailwind CSS, Clerk Authentication, Stream Video SDK, MySQL Database, and OpenAI.

Smaro Live allows users to create secure meetings, join live video calls, schedule meetings, record sessions, generate transcripts, and manage communication in one smart platform.

## 📌 Features

* Secure User Authentication using Clerk
* MySQL Database Integration
* Store Users & Meeting Data
* Create Personal Meeting Rooms
* Join Instant Video Calls
* Schedule Upcoming Meetings
* View Previous Meetings
* Meeting Recordings
* Real-time Participants Panel
* Multiple Video Layout Modes
* AI-powered Transcription
* Responsive UI Design

---

## 🛠️ Tech Stack

### Frontend

* Next.js 14
* React
* TypeScript
* Tailwind CSS

### Backend

* Next.js API Routes
* Node.js

### Database

* MySQL (XAMPP / phpMyAdmin)

### Authentication

* Clerk

### Realtime Communication

* Stream Video SDK

### AI Integration

* OpenAI API
* Deepgram API

---

## 📂 Project Structure

```text
smaro-live/
├── app/
├── components/
├── database/
│   └── meeting_app.sql
├── public/
├── README.md
```

---

## 🚀 Installation

```bash
git clone https://github.com/Smritibhardwaz2711/smaro-live.git
cd smaro-live
npm install
npm run dev
```

---

## 🔑 Environment Variables

Create `.env.local`

```env
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=
NEXT_PUBLIC_STREAM_API_KEY=
STREAM_SECRET_KEY=
DATABASE_URL=
OPENAI_API_KEY=
DEEPGRAM_API_KEY=
```

---

## 🗄️ Database Setup

1. Start XAMPP and run Apache + MySQL
2. Open `http://localhost/phpmyadmin`
3. Create a database named `meeting_app`
4. Import file:

```text
database/meeting_app.sql
```

5. Update your `DATABASE_URL` in `.env.local`

---


## 👩‍💻 Author

Smriti Kumari
GitHub: https://github.com/Smritibhardwaz2711

---

## ⭐ Support

If you like this project, give it a star ⭐
