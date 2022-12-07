*Babylonian-Demo
signWithoutZero
	
	| signs |
	signs := self sign.
	^ (signs x isZero ifTrue: [1] ifFalse: [signs x])@(signs y isZero ifTrue: [1] ifFalse: [signs y])