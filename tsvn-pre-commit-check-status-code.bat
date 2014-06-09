for /f "delims=" %%a in ('curl -LIks --url "http://127.0.0.1:8888/tests" -o NUL -w "%%{http_code}"') do set @statusCode=%%a

::echo %@statusCode%

if "%@statusCode%" == "200" (
	exit 0
) else (
	echo "TESTS FAILED - Commit cancelled" 1>&2
	exit 1
)