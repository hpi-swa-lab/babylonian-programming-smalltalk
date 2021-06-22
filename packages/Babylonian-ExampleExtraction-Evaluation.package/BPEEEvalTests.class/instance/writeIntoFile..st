file
writeIntoFile: allFoundTests
	
	| fileStream fileStream2 |

	fileStream := FileDirectory default fileNamed: 'eva_eval_tests.csv'.
	fileStream truncate: 0.
	fileStream reset.
	fileStream2 := FileDirectory default fileNamed: 'eva_eval_tests_extras.csv'.
	fileStream2 truncate: 0.
	fileStream2 reset.
	self writeHeader: fileStream.
	self writeResults: allFoundTests on: fileStream.
	self writeExtrasHeader: fileStream2.
	self writeExtrasResults: allFoundTests on: fileStream2.
	fileStream close.
	fileStream2 close.