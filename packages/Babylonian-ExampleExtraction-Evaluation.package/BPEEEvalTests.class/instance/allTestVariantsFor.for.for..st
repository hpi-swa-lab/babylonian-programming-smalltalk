eval
allTestVariantsFor: aMethod for: methodSelector for: class
	
	| searchTool theTests |
	Transcript show: aMethod printString.
	
	searchTool := BPExampleSearchTool new
		basicMethod: aMethod;
		evalOnlyBase53: true.
	theTests := Dictionary new.
	
	theTests at: self classKey put: class printString.
	theTests at: self methodSelectorKey put: methodSelector.
	
	"always the same :P"
	"searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: false;
		includesMethodSelectorPreference: false.
	searchTool search.
	theTests at: #allTests put: searchTool searchResults size."
	
	"leave these out for whole packages"
	"searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: true;
		packageNamePreference: false;
		includesMethodSelectorPreference: false.
	searchTool search.
	theTests at: self keyClassName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: false;
		packageNamePreference: false;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelector put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: true;
		packageNamePreference: false;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelectorClassName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: true;
		packageNamePreference: true;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelectorClassNamePackageName put: searchTool searchResults size."
	
	
	
	searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: false;
		packageNamePreference: true;
		includesMethodSelectorPreference: false.
	searchTool search.
	theTests at: self keyPackageName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		classNamePreference: false;
		packageNamePreference: true;
		includesMethodSelectorPreference: true.
	searchTool search.
	theTests at: self keyMethodSelectorPackageName put: searchTool searchResults size.
	
	theTests at: self keyCoveragePackageName put: 0.
	theTests at: self keyCoverage put: 0.
	
	
	"##coverage"
	"searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		packageNamePreference: true;
		includesMethodSelectorPreference: false;
		tryCoveragePreference: true.
	searchTool search.
	theTests at: self keyCoveragePackageName put: searchTool searchResults size.
	
	searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		packageNamePreference: false;
		includesMethodSelectorPreference: false;
		tryCoveragePreference: true.
	searchTool search.
	theTests at: self keyCoverage put: searchTool searchResults size."
	
	"##recording"
	"searchTool
		tryRecordingPreference: false;
		classNamePreference: false;
		packageNamePreference: true;
		includesMethodSelectorPreference: false;
		tryRecordingPreference: true.
	searchTool search.
	theTests at: self keyCoverage put: searchTool searchResults size."
	
	Transcript show: '.'.
	
	^ theTests