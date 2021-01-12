code pane
aboutToStyle: aStyler requestor: anObject

	(super aboutToStyle: aStyler requestor: anObject)
		ifTrue: [
				(aStyler respondsTo: #selectedMethod:) 
					ifTrue: [
						aStyler selectedMethod: self methodReference].
						^ true]
		ifFalse: [^ false]