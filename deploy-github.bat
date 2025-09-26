@echo off
setlocal

:: === CONFIGURACIÓN DEL ARTEFACTO ===
set JAR_PATH=impresionrecibos-2.0.0-SNAPSHOT.jar
set GROUP_ID=sisgeco.org
set ARTIFACT_ID=impresionrecibos
set VERSION=2.0.0-SNAPSHOT
set PACKAGING=jar

:: === CONFIGURACIÓN DE REPOSITORIO ===
set REPO_ID=github
set REPO_URL=https://maven.pkg.github.com/AntonioCollante/sisgeco-impresionrecibos

:: === COMANDO DE DEPLOY ===
echo Publicando %ARTIFACT_ID% versión %VERSION% en GitHub Packages...
mvn deploy:deploy-file ^
  -Dfile=%JAR_PATH% ^
  -DgroupId=%GROUP_ID% ^
  -DartifactId=%ARTIFACT_ID% ^
  -Dversion=%VERSION% ^
  -Dpackaging=%PACKAGING% ^
  -DrepositoryId=%REPO_ID% ^
  -Durl=%REPO_URL%

echo.
echo ✅ Publicación finalizada. Verifica en: https://github.com/AntonioCollante?tab=packages

endlocal
pause