@echo off

echo ==============================
echo Cleaning old simulation files
echo ==============================

REM Delete logs and temp files
del /s /q *.log *.jou *.pb *.wdb *.str 2>nul
del /s /q *.backup.* 2>nul
del /s /q *.crvsdump *.dbg *.mem *.reloc *.rtti *.svtype *.type *.xdbg 2>nul
del /s /q *.exe 2>nul

REM Delete simulation directory
rmdir /s /q xsim.dir 2>nul

echo Cleanup Done!
echo.

echo ==============================
echo Running Simulation
echo ==============================

echo Compiling Design...
call xvlog design.v

echo Compiling Testbench...
call xvlog -sv -L uvm -i C:\UVM\1.2\src testbench.sv C:\UVM\1.2\src\uvm_pkg.sv

echo Elaborating...
call xelab work.test -s simv

echo Running Simulation...
call xsim simv -runall

echo.
echo Simulation Completed!
pause