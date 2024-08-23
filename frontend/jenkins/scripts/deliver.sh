#!/usr/bin/env sh

npm --prefix ./frontend/ run start
venv/bin/python3 backend/main.py

sleep 1
echo $! > .pidfile

echo 'Now...'
echo 'Visit http://localhost:3000/todos to see your Node.js/React application in action.'