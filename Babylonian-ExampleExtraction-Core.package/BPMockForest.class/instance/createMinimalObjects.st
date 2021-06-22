object creation
createMinimalObjects
	
	| tmp |	
	
	tmp := Dictionary new.
	objectMockMapping valuesDo: [:mockTemplate | tmp at: mockTemplate put: mockTemplate createMinimalObject].
	tmp keysAndValuesDo: [:mockTemplate :miniObject | mockTemplate correctObjectReferences: tmp for: miniObject].	
	
	^ {tmp at: receiverMockTree rootMock. argumentMockTrees collect: [:mockTree | tmp at: mockTree rootMock]}