file
writeIntoFile: allFoundTests
	
	| fileStream |

	fileStream := FileDirectory default fileNamed: 'eva_eval_tests.csv'.
	fileStream truncate: 0.
	fileStream reset.
	self writeHeader: fileStream.
	self writeResults: allFoundTests on: fileStream.
	fileStream close.