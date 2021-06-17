actual-tests
testFindingTests
	
	| searchTool |
	searchTool := BPExampleSearchTool new method: OrderedCollection>>#add:.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: false.
	searchTool search.
	self assert: searchTool searchResults size equals: 8149.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: false.
	searchTool search.
	self assert: searchTool searchResults size equals: 40.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: true.
	searchTool search.
	self assert: searchTool searchResults size equals: 3.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: true.
	searchTool search.
	self assert: searchTool searchResults size equals: 431.
	
	"this kills everything somehow"
	"searchTool
		tryRecordingPreference: true;
		classNamePreference: true;
		includesMethodSelectorPreference: false.
	searchTool search.
	self assert: searchTool searchResults size equals: -1."
	
	"the coverage also kills everything, but differently"
	"searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: true;
		tryCoveragePreference: true.
	searchTool search.
	self assert: searchTool searchResults size equals: -1."