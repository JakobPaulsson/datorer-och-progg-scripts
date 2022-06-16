g++ -o uppgift3_losning %1
cls
@echo off
prompt $
if [%1]==[] goto noinput
echo Testdata1:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_1.txt
echo.
echo Testdata2:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_2.txt
echo.
echo Testdata3:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_3.txt
echo.
echo Testdata4:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_4.txt
echo.
echo Testdata5:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_5.txt
echo.
echo Testdata6:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_6.txt
echo.s
echo Testdata7:
echo.
uppgift3_losning.exe < inputs/uppgift3_inputs_7.txt
del uppgift3_losning.exe
goto end
:noinput
echo.
echo Format: uppgift3_script.bat "fil_att_testa.cpp"
:end
prompt
@echo on