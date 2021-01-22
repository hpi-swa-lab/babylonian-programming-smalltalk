choosing packages
configure
	
	"returns true if any changes were made"

	| originalPackages addedPackages removedPackages |
	acceptChanges := false.
	instrumentedPackages := self packagesToInstrument.
	originalPackages := instrumentedPackages copy.
	self updateUninstrumentedPackages.
	
	ToolBuilder open: self.
	acceptChanges ifFalse: [^ false].
	
	removedPackages := originalPackages copyWithoutAll: self instrumentedPackages.
	addedPackages := self instrumentedPackages copyWithoutAll: originalPackages.
	(removedPackages isEmpty and: [addedPackages isEmpty]) ifTrue: [^ false].
	
	PackagesToInstrument removeAll: removedPackages.
	PackagesToInstrument addAll: addedPackages.
	^ true