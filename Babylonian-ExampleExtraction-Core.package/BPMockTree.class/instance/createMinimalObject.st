object creation
createMinimalObject
	
	| tmp |
	
	"^ root createMinimalObjectWith: Dictionary new"
	tmp := Dictionary new.
	objectMockMapping valuesDo: [:mockTemplate | tmp at: mockTemplate put: mockTemplate createMinimalObject].
	tmp keysAndValuesDo: [:mockTemplate :miniObject | mockTemplate correctObjectReferences: tmp for: miniObject].
	
	^ tmp at: root