process local
value: anObject during: aBlock
	
	^ self value: anObject during: aBlock inProcess: Processor activeProcess