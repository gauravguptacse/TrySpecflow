"..\packages\NUnit.Runners.2.6.0.12051\tools\nunit-console.exe" /labels /out=SpecFlowResult.txt /xml=SpecFlowResult.xml /framework=net-4.0 bin\Debug\SpecFlowTestProj.dll
 
"..\packages\SpecFlow.1.9.0\tools\specflow.exe" nunitexecutionreport SpecFlowTestProj.csproj
 
IF NOT EXIST SpecFlowResult.xml GOTO FAIL
IF NOT EXIST SpecFlowResult.html GOTO FAIL
EXIT
 
:FAIL
echo ##teamcity[buildStatus status='FAILURE']
EXIT /B 1