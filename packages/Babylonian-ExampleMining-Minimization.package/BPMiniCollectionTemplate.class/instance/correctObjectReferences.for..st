object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	mockTemplateCollection do: [:template | aMiniObject add: (existingObjects at: template)]