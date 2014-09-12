"C:\Program Files (x86)\NUnit 2.6.2\bin\nunit-console.exe" /labels /out=TestResult.txt /xml=TestResult.xml /framework=net-4.0 C:\Users\Administrator\Desktop\Learn\StashWithTeamCity\SpecFlowTestProj\bin\Debug\SpecFlowTestProj.dll
 
"C:\Users\Administrator\AppData\Local\Temp\nuget\e0fhravk.j5a\tools\specflow.exe" nunitexecutionreport C:\Users\Administrator\Desktop\Learn\StashWithTeamCity\SpecFlowTestProj\SpecFlowTestProj.csproj
 
IF NOT EXIST TestResult.xml GOTO FAIL
IF NOT EXIST TestResult.html GOTO FAIL
EXIT
 
:FAIL
echo ##teamcity[buildStatus status='FAILURE']
EXIT /B 1