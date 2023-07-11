object creation
correctObjectReferences: existingObjects for: aMiniObject

	templateCollection withIndexDo: [:template :index | aMiniObject at: index put: (existingObjects at: template)]