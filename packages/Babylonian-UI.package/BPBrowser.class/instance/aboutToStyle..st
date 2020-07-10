code pane
aboutToStyle: aStyler
	
	(super aboutToStyle: aStyler)
		ifTrue: [
				(aStyler respondsTo: #selectedMethod:) ifTrue: [
					aStyler selectedMethod: self methodReference].
				^ true]
		ifFalse: [^ false]