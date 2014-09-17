"..\packages\NUnit.Runners.2.6.0.12051\tools\nunit-console.exe" /labels /out=TestResult1.txt /xml=TestResult1.xml /framework=net-4.0 bin\Debug\SpecFlowTestProj.dll
 
"..\packages\SpecFlow.1.9.0\tools\specflow.exe" nunitexecutionreport SpecFlowTestProj.csproj
 
IF NOT EXIST TestResult.xml GOTO FAIL
IF NOT EXIST TestResult.html GOTO FAIL
EXIT
 
:FAIL
echo ##teamcity[buildStatus status='FAILURE']
EXIT /B 1