*Babylonian-UI
aboutToStyle: aStyler

	| originalDecision |
	originalDecision := super aboutToStyle: aStyler.

	(aStyler respondsTo: #selectedMethod:) ifTrue: [
		aStyler selectedMethod: self methodReference.
		^ true].
	
	^ originalDecision