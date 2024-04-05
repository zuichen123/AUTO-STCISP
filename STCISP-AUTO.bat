::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHC3xH4DHDhofzChcmK5CdU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJHC3xH4DHDhobTG2EyaJMpY129i16vKCwg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
REM 检查当前目录是否有zip文件
if exist *.zip (
    REM 删除所有exe文件
    del stc*-isp*.exe /f /q
    REM 解压zip文件到当前目�?
    for %%f in (*.zip) do (
        echo 解压 %%f
        C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -nologo -noprofile -command "Expand-Archive -Path '%%f' -DestinationPath '.' -Force"
        REM 删除zip文件
        del "%%f" /f /q
    )
    REM 运行解压出的exe文件
    for %%f in (stc*-isp*.exe) do (
        echo 运行 %%f
        start "" "%%f"
    )
) else (
    REM 直接运行当前目录的exe文件
    for %%f in (stc*-isp*.exe) do (
        echo 运行 %%f
        start "" "%%f"
    )
)