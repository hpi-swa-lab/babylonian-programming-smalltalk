object creation
correctObjectReferences: existingObjects for: aMiniObject

	templateCollection do: [:template | aMiniObject add: (existingObjects at: template)]