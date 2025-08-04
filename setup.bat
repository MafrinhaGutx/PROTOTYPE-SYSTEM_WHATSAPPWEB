@echo off
echo ========================================
echo Sistema de Apoio ao Cliente
echo ========================================

echo [1/4] Instalando dependencias do projeto principal...
call npm install
if %errorlevel% neq 0 (
    echo Erro ao instalar dependencias do projeto principal
    pause
    exit /b 1
)

echo [2/4] Instalando dependencias do servidor...
cd server
call npm install
if %errorlevel% neq 0 (
    echo Erro ao instalar dependencias do servidor
    pause
    exit /b 1
)
cd ..

echo [3/4] Instalando dependencias do cliente...
cd client
call npm install
if %errorlevel% neq 0 (
    echo Erro ao instalar dependencias do cliente
    pause
    exit /b 1
)
cd ..

echo [4/4] Inicializando banco de dados...
cd server
call node database/init.js
if %errorlevel% neq 0 (
    echo Erro ao inicializar banco de dados
    pause
    exit /b 1
)
cd ..

echo ========================================
echo Instalacao concluida com sucesso!
echo ========================================
echo.
echo Para executar o projeto:
echo npm run dev
echo.
echo Credenciais de demonstracao:
echo - Admin: admin@empresa.com / admin123
echo - Agente: agente@empresa.com / agente123
echo - Supervisor: supervisor@empresa.com / supervisor123
echo.
pause 