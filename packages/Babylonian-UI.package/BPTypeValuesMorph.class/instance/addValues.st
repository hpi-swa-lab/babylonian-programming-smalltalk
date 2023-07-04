ui
addValues
	
	| classes classNames |
	classes := values collect: [:v | v tracedValue] as: Set.
	classNames := classes collect: [:class | class externalName].
	self addMorphBack: (classNames asArray joinSeparatedBy: ', ') asText asMorph