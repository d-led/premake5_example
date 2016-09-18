@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"
msbuild premake5_example.sln /t:Rebuild
bin\release\test.exe
