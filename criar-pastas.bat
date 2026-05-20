@echo off
title Criador de Estrutura de Site

:: Solicita o nome da pasta do projeto
set /p projeto=Digite o nome do projeto: 

:: Verifica se foi digitado algo
if "%projeto%"=="" (
    echo Nome do projeto nao informado.
    pause
    exit
)

echo.
echo Criando projeto "%projeto%"...

:: Cria a pasta principal
mkdir "%projeto%"

:: Entra na pasta criada
cd "%projeto%"

:: Criando pastas
mkdir assets
mkdir css
mkdir js

:: Criando arquivos
type nul > css\style.css
type nul > js\script.js
type nul > index.html

echo.
echo Estrutura criada com sucesso!
echo.
echo %projeto%/
echo %projeto%/assets/
echo %projeto%/css/style.css
echo %projeto%/js/script.js
echo %projeto%/index.html
echo.

pause