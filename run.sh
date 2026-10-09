#!/bin/bash
# Compile and run Student Task Manager (requires MySQL Connector/J jar in lib/)
mkdir -p out
javac -d out src/main/java/com/abhay/taskmanager/*.java || exit 1
java -cp "out:lib/*" com.abhay.taskmanager.Main
