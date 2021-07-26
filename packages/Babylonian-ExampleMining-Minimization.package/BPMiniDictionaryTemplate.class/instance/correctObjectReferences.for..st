object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	templateCollection keysAndValuesDo: [:keyTemplate :valueTemplate |
		aMiniObject add: (existingObjects at: keyTemplate)->(existingObjects at: valueTemplate)].