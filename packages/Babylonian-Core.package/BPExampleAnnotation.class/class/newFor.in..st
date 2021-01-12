instance creation
newFor: anExample in: aMethodReference
	
	"This is intended for new examples which are not yet serialized in any source code"
	
	^ self new
		exampleName: anExample exampleName;
		methodReference: aMethodReference;
		initializeActualExample: anExample;
		yourself