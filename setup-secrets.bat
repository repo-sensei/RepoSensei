@echo off
echo Setting up RepoSensei secrets...

REM Create secrets directory
if not exist secrets mkdir secrets

echo Creating secret files...

REM Supabase URL
set /p supabase_url="Enter your Supabase Project URL: "
echo %supabase_url% > secrets\supabase_url.txt

REM Supabase Anon Key
set /p supabase_anon_key="Enter your Supabase Anon Key: "
echo %supabase_anon_key% > secrets\supabase_anon_key.txt

REM Supabase Service Role Key
set /p supabase_service_role_key="Enter your Supabase Service Role Key: "
echo %supabase_service_role_key% > secrets\supabase_service_role_key.txt

REM GitHub Token
set /p github_token="Enter your GitHub Personal Access Token: "
echo %github_token% > secrets\github_token.txt

echo Secrets created successfully!
echo Secret files are in .\secrets\
echo Files are created with restricted access
echo.
echo You can now run: docker-compose up --build
pause 