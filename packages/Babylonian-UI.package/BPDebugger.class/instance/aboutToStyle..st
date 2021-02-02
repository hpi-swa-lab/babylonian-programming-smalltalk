code pane
aboutToStyle: aStyler
	
	(super aboutToStyle: aStyler)
		ifTrue: [
				(aStyler respondsTo: #selectedMethod:) 
					ifTrue: [
						aStyler selectedMethod: self selectedContext method].
						^ true]
		ifFalse: [^ false]