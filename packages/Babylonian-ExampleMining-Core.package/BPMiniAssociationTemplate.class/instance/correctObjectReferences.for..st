object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	aMiniObject
		key: (existingObjects at: mockKey)
		value: (existingObjects at: mockValue).