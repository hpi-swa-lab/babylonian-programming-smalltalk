object creation
correctObjectReferences: existingObjects for: aMiniObject

	aMiniObject
		key: (existingObjects at: keyTemplate)
		value: (existingObjects at: valueTemplate)