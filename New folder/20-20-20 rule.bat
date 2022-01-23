:loop
nircmd monitor on
timeout /t 1800
SET /A "index = 1"
SET /A "count = 20"
:while
if %index% leq %count% (
   nircmd monitor off
   timeout /t 1
   SET /A "index = index + 1"
   goto :while
)
goto loop