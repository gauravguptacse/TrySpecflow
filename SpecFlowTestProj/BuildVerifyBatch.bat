"..\packages\NUnit.Runners.2.6.0.12051\tools\nunit-console.exe" /labels /out=TestResult.txt /xml=TestResult.xml /framework=net-4.0 bin\Debug\SpecFlowTestProj.dll
 
"..\packages\SpecFlow.1.9.0\tools\specflow.exe" nunitexecutionreport SpecFlowTestProj.csproj /out:SpecflowTestResult.html
 
IF NOT EXIST TestResult.xml GOTO FAIL
IF NOT EXIST SpecflowTestResult.html GOTO FAIL
EXIT
 
:FAIL
echo ##teamcity[buildStatus status='FAILURE']
EXIT /B 1
