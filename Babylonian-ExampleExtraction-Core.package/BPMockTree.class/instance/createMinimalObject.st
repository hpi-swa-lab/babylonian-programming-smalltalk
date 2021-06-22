object creation
createMinimalObject
	
	| tmp |
	
	tmp := Dictionary new.
	forest objectMockMapping valuesDo: [:mockTemplate | tmp at: mockTemplate put: mockTemplate createMinimalObject].
	tmp keysAndValuesDo: [:mockTemplate :miniObject | mockTemplate correctObjectReferences: tmp for: miniObject].
	
	^ tmp at: root