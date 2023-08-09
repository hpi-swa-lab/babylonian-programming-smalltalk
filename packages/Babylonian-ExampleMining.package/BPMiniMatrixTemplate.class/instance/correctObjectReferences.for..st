object creation
correctObjectReferences: existingObjects for: aMiniObject

	templateCollection withIndicesDo: [:template :rowIndex :columnIndex |
		aMiniObject at: rowIndex at: columnIndex put: (existingObjects at: template)]