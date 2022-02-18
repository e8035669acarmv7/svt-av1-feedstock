@echo on

cd Build

cmake -G "NMake Makefiles"       ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DBUILD_SHARED_LIBS=ON     ^
      -DNATIVE=OFF               ^
      ..

if errorlevel 1 exit 1
nmake

if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
