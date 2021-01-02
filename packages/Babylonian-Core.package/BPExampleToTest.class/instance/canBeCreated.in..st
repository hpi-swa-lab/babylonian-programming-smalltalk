helper
canBeCreated: aMethodName in: aClass
	
	"Furthermore to simply checking if given method name already exists, 
	we are okay with overriding tests which this class created earlier."

	^ (self isExisting: aMethodName in: aClass) not or: [self isGeneratedExampleTest: aMethodName in: aClass]

	