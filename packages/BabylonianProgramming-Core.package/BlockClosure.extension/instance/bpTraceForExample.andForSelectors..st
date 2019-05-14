*BabylonianProgramming-Core
bpTraceForExample: anExample andForSelectors: aCollectionOfSelectors
	
	^ BPActiveSelectorsToBeTraced value: aCollectionOfSelectors during: [
		self bpTraceForExample: anExample]