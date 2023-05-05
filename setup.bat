@echo off

echo ==================================
echo Node version: 
node -v
echo npm version: 
CMD /C npm --version
echo ==================================

cd frontend
echo Installing frontend dependencies
CMD /C npm install
cd ..


cd backend
echo Installing backend dependencies
CMD /C npm install


for /d %%i in (*) do (
  if /i not "%%~nxi"=="node_modules" (
    cd "%%i"
    echo Installing %%~nxi dependencies
    CMD /C npm install
    cd ..
  )
)

cd ..

echo ==================================
echo all dependencies installed
echo ==================================
