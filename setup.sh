#!/bin/bash

echo ==================================
echo Node version: 
node -v
echo npm version: 
npm --version
echo ==================================

cd frontend
echo Installing frontend dependencies
npm install
cd ..

cd backend
echo Installing backend dependencies
npm install

for i in */; do
  if [[ "$i" != "node_modules/" ]]; then
    cd "$i"
    echo Installing $(basename "$i") dependencies
    npm install
    cd ..
  fi
done

cd ..

echo ==================================
echo all dependencies installed
echo ==================================
