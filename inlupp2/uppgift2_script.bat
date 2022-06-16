g++ -o uppgift2_losning %1
cls
@echo off
prompt $
if [%1]==[] goto noinput
echo Testdata1:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_1.txt
echo.
echo Testdata2:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_2.txt
echo.
echo Testdata3:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_3.txt
echo.
echo Testdata4:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_4.txt
echo.
echo Testdata5:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_5.txt
echo.
echo Testdata6:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_6.txt
echo.
echo Testdata7:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_7.txt
echo.
echo Testdata8:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_8.txt
echo.
echo Testdata9:
echo.
uppgift2_losning.exe < inputs/uppgift2_inputs_9.txt
del uppgift2_losning.exe
goto end
:noinput
echo.
echo Format: uppgift2_script.bat "fil_att_testa.cpp"
:end
prompt
@echo on