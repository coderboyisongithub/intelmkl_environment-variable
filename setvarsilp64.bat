 @echo off
setlocal





set script_path=%~dp0
echo CPRO: %script_path%
set TMP_MKLROOT=%script_path%..
set MOD_NAME=mod
set MKL_TARGET_ARCH=intel64
set LIB=%TMP_MKLROOT%\lib\%MKL_TARGET_ARCH%;%LIB%




set PATH_=%TMP_MKLROOT%\redist\%MKL_TARGET_ARCH%;%TMP_MKLROOT%\bin\%MKL_TARGET_ARCH%;%PATH%

::The ILP64 interface provides for the following:
::Support large data arrays (with more than 231-1 elements)
::Enable compiling your Fortran code with the /4I8 compiler option
set MKL_LP64_ILP64=ilp64
set INCLUDE=%TMP_MKLROOT%\include\%MKL_TARGET_ARCH%\%MKL_LP64_ILP64%;%INCLUDE%"
set INCLUDE=%TMP_MKLROOT%\include;%INCLUDE%"
set CPATH=%TMP_MKLROOT%\include;%CPATH%"
set PKG_CONFIG_PATH=%TMP_MKLROOT%\lib\pkgconfig;%PKG_CONFIG_PATH%
set NLSPATH=%TMP_MKLROOT%\lib\%MKL_TARGET_ARCH%;%NLSPATH%"



echo MKLROOT %TMP_MKLROOT% /M
echo PATH %PATH_% /M
echo LIB %LIB% /M
echo INCLUDE %INCLUDE% /M
echo CPATH %CPATH% /M
echo NLSPATH %NLSPATH% /M
echo PKG_CONFIG_PATH %PKG_CONFIG_PATH% /M


setx MKLROOT "%TMP_MKLROOT%" /M
setx PATH "%PATH_%" /M
setx LIB "%LIB%" /M
setx INCLUDE "%INCLUDE%" /M
setx CPATH "%CPATH%" /M
setx NLSPATH "%NLSPATH%" /M
setx PKG_CONFIG_PATH "%PKG_CONFIG_PATH%" /M
