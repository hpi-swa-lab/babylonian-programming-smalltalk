actual-tests
testFindingTests

	| searchTool |
	searchTool := BPExampleSearchTool new method: BPExampleMiningTestClass>>#superUniqueExampleMiningTestMethod.

	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: false.
	searchTool search.
	self assert: searchTool searchResults size > 1.

	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: false.
	searchTool search.
	self assert: searchTool searchResults size equals: 0.

	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: true.
	searchTool search.
	self assert: searchTool searchResults size equals: 0.

	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: true.
	searchTool search.
	self assert: searchTool searchResults size equals: 2