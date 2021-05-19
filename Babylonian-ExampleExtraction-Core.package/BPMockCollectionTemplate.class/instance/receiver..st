accessing
receiver: anObject
	
	super receiver: anObject.
	mockTemplateCollection := receiver collect: [:each | each "asMock"].
	"todo"