@echo off
rem Compile and run Student Task Manager (requires MySQL Connector/J jar in lib\)
if not exist out mkdir out
javac -d out src\main\java\com\abhay\taskmanager\*.java || exit /b 1
java -cp "out;lib/*" com.abhay.taskmanager.Main
