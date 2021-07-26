accessing
receiver: anObject
	
	super receiver: anObject.
	keyTemplate :=  self ensureTemplateFor: receiver key.
	valueTemplate :=  self ensureTemplateFor: receiver value.