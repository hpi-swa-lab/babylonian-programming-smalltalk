handling
canSerialize: anExample
	
	"Anything that's set and shouldn't raise an error is supported"
	^ anExample expectedResult notNil 
		and: [(anExample newExpectedResultObject isKindOf: Exception class) not]