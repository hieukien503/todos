#!/usr/bin/env sh

npm --prefix ./frontend/ run build

venv/bin/python3 backend/main.py &
npm --prefix ./frontend/ start &
sleep 1
echo $! > .pidfile

echo 'Now...'
echo 'Visit http://localhost:3000 to see your Node.js/React application in action.'