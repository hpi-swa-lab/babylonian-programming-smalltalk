actions
uninstrumentSelected
	
	| package |
	package := (self instrumentedPackagesWithTitle at: self selectionInstrumented).
	self instrumentedPackages remove: package.
	
	self updateUninstrumentedPackages.
	
	self changed: #instrumentedPackagesWithTitle.
	self changed: #uninstrumentedPackagesWithTitle.
	selectionInstrumented ifNotNil:
		[selectionInstrumented := selectionInstrumented min: instrumentedPackages size + 1.
		self changed: #selectionInstrumented].
	self changed: #hasInstrumentedSelection.
	self changed: #hasUninstrumentedSelection.
	