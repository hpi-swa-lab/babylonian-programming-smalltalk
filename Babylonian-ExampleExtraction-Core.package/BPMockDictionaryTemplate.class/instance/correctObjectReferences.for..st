as yet unclassified
correctObjectReferences: existingObjects for: aMiniObject
	
	mockTemplateCollection keysAndValuesDo: [:keyTemplate :valueTemplate |
		aMiniObject add: (existingObjects at: keyTemplate)->(existingObjects at: valueTemplate)].