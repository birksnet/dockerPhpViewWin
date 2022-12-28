echo off
set first_var='%1'
ECHO Set configuration variable new project.
set /p my_container_prefix= Pasta Raiz ? :
echo docker exec -it  %my_container_prefix%-%%1-1 bash > .\bin\connect.bat
echo docker exec  %my_container_prefix%-mysql-1 /var/schema/restoure.sh %%1 %%2 > .\bin\dbCharge.bat

set /p my_git_user= User Git ? :
set /p my_git_pass= Password Git ? :
set /p my_git_url= URL Repository Git ? :
set /p my_git_branch= Branch for clone ? :
set /p my_git_php_version= Version for php ? :

echo #Credentials Repository Git > .\.env
echo GIT_USER="%my_git_user%" >> .\.env
echo GIT_PASS="%my_git_pass%" >> .\.env
echo GIT_URL="%my_git_url%" >> .\.env
echo GIT_BRANCH="%my_git_branch%" >> .\.env
echo PHP_VERSION="%my_git_php_version%" >> .\.env

git clone -b %my_git_branch% https://%my_git_user%:%my_git_pass%@%my_git_url% src

