import mysql from "mysql2/promise";

export const db = await mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "", // your password
  database: "meeting_app", // your DB name
});