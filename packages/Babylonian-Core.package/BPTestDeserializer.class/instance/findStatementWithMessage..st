helpers
findStatementWithMessage: aMsg

	^ (self ast body statements detect: [:statement | statement selector = aMsg]) arguments.