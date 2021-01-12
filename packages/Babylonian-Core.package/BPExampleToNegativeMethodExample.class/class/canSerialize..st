handling
canSerialize: anExample

	"If an error is expected we want to check if it's raised during execution."
	^ anExample newExpectedResultObject isKindOf: Exception class