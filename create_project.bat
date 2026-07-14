@echo off

if "%1"=="" (
    echo Usage: create_project project_name
    exit /b
)

set PROJECT_NAME=%1
set TEMPLATE_PATH=E:\VLSI_Templates\base_project

mkdir %PROJECT_NAME%
xcopy /E /I %TEMPLATE_PATH% %PROJECT_NAME%

echo Project %PROJECT_NAME% created successfully!