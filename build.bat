@echo off
set pwd=%~dp0
for /F %%i in ('go env GOOS') do ( set GOOS=%%i)
for /F %%i in ('go env GOARCH') do ( set GOARCH=%%i)
set CGO_CFLAGS=-I%pwd%include -I%pwd%include\luajit-2.1
set CGO_LDFLAGS=-L%pwd%lib\%GOOS%_%GOARCH% -ltolua -lluajit-5.1 -lmingwex
go build 