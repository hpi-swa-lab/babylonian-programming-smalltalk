model accessing
timeout: aString

	| parsedNum |
	parsedNum := Number readCarefullyFrom: aString.
	(parsedNum isKindOf: Exception) ifTrue: [^ self "Early return, don't change anything"].
	self example timeout: parsedNum.
	self changed: #timeout.