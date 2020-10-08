example methods
methodACallingB
	
	| a |
	a := self methodBInstrumented , ' and a'.
	^ self bpTrace: [a] forProbe: 10 inContext: thisContext