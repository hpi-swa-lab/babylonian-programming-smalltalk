example methods
methodACallingB
	| a |
	a := self methodB , ' and a'.
	^ self bpTrace: [a] forProbe: 10 inContext: thisContext