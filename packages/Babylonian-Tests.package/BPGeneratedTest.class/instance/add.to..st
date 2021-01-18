helper
add: aNumber1 to: aNumber2
	
	^ (aNumber1 < 0) 
			ifTrue: [Error] 
			ifFalse: [aNumber1 + aNumber2 + self base]