@echo off

:: Define o caminho para o classpath
set CLASSPATH=lib\*

:: Solicita o caminho da pasta de origem
echo Digite o caminho da pasta de origem:
set /p SOURCE_PATH=

:: Solicita o caminho da pasta de destino
echo Digite o caminho da pasta de destino:
set /p DEST_PATH=

:: Solicita o critério de pesquisa
echo Digite o criterio de pesquisa (coloque entre aspas se houver espaços ou caracteres especiais):
set /p SEARCH_CRITERIA=

:: Monta e executa o comando
jre\bin\java.exe -cp %CLASSPATH% iped.engine.util.IPEDCrawler %SOURCE_PATH% %DEST_PATH% %SEARCH_CRITERIA%

:: Pausa para visualizar possíveis erros
pause