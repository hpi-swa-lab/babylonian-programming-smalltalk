eval
allTestVariantsFor: aMethod
	
	| searchTool theTests |
	searchTool := BPExampleSearchTool new
		method: aMethod;
		evalOnlyBase53: true.
	theTests := Dictionary new.
	
	"always the same :P"
	"searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: false.
	searchTool search.
	theTests at: #allTests put: searchTool searchResults size."
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: false.
	searchTool search.
	theTests at: self keyClassName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: true;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelectorClassName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelector put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: true; "without this everything dies"
		includesMethodSelectorPreference: false;
		tryCoveragePreference: true.
	searchTool search.
	theTests at: self keyCoverage put: searchTool searchResults size.
	
	Transcript show: '.'.
	
	^ theTests