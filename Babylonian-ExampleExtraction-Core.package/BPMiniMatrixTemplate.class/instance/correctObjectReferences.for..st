object creation
correctObjectReferences: existingObjects for: aMiniObject
	
	mockTemplateCollection withIndicesDo: [:template :rowIndex :columnIndex |
		aMiniObject at: rowIndex at: columnIndex put: (existingObjects at: template)].