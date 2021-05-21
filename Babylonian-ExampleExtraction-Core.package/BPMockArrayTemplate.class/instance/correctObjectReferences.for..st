object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	mockTemplateCollection withIndexDo: [:template :index | aMiniObject at: index put: (existingObjects at: template)]