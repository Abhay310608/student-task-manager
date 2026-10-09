# 📚 Student Task Manager

A task management web app that helps students add, update and track academic assignments and deadlines.

**Tech stack:** Java · MySQL · HTML · CSS (plus a little JavaScript for the UI)

## Features
- User registration and login (passwords stored as SHA-256 hashes, session cookie)
- Add assignments with subject, due date and priority (Low / Medium / High)
- Update status: Pending → In progress → Done
- Delete tasks, filter by status, overdue deadlines highlighted
- Tasks stored in MySQL, so they persist across sessions
- Responsive layout built with HTML and CSS

## Project structure
```
student-task-manager/
├── schema.sql                      # MySQL tables
├── src/main/java/com/abhay/taskmanager/
│   ├── Main.java                   # HTTP server + JSON API
│   └── Db.java                     # DB connection + hashing
├── web/                            # index.html, style.css, app.js
├── lib/                            # put the MySQL JDBC driver .jar here
└── run.sh / run.bat
```

## Setup
1. Install JDK 17+ and MySQL.
2. Create the database: `mysql -u root -p < schema.sql`
3. Download **MySQL Connector/J** (https://dev.mysql.com/downloads/connector/j/) and place the `.jar` in `lib/`.
4. Set your DB credentials (optional, defaults shown):
   ```
   DB_URL=jdbc:mysql://localhost:3306/student_task_manager
   DB_USER=root
   DB_PASS=your_password
   ```
5. Run:
   - Linux/macOS: `./run.sh`
   - Windows: `run.bat`
6. Open http://localhost:8080

## Possible improvements
- Use BCrypt instead of SHA-256 for password hashing
- Email reminders for upcoming deadlines
- Edit task details, calendar view

## Author
Abhay Singh — B.Tech CSE, SRCEM
