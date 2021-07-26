accessing
receiver: anObject
	
	super receiver: anObject.
	templateCollection := Dictionary new.
	receiver keysAndValuesDo: [:key :value | templateCollection add: (self ensureTemplateFor: key)->(self ensureTemplateFor: value)].