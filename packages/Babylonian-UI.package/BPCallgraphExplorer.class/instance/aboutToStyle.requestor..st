code pane
aboutToStyle: aStyler requestor: anObject
	
	aStyler selectedMethod: self codePaneMethodReference.
	aStyler parseAMethod: true.
	^ true