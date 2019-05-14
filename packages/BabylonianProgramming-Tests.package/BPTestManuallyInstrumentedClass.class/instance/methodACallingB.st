example methods
methodACallingB
	| a |
	a := self methodB , ' and a'.
	^ self bpTrace: a forId: 10 inContext: thisContext