$cred = Get-Credential

$array = @("taking longer","Severity: 16","Severity: 17","Severity: 18","Severity: 19","Severity: 20","Severity: 21","Severity: 22","Severity: 23","Severity: 24","could not","failure","autogrow","killed","SqlDump","SQL Server is starting","victim")
foreach ($search in $array) {
	Get-DbaCmsRegServer "localhost\sql2017a" -Group DBADailyCheck -SqlCredential $cred | Get-DbaErrorLog -LogNumber 0,1 -Text $search -SqlCredential $cred
} Format-Table -AutoSize
