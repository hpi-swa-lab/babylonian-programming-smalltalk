choosing packages
configure
	
	"returns true if any changes were made"

	| originalPackages addedPackages removedPackages warning |
	acceptChanges := false.
	instrumentedPackages := self packagesToInstrument asOrderedCollection sorted.
	originalPackages := instrumentedPackages copy.
	self updateUninstrumentedPackages.
	
	ToolBuilder open: self.
	acceptChanges ifFalse: [^ false].
	
	removedPackages := originalPackages copyWithoutAll: self instrumentedPackages.
	addedPackages := self instrumentedPackages copyWithoutAll: originalPackages.
	(removedPackages isEmpty and: [addedPackages isEmpty]) ifTrue: [^ false].
	
	warning := 'This will instrument the newly selected 
packages and can take considerable time!'.
	(self confirm: warning)
		ifTrue: [
			removedPackages 
				do: [:p | BPByteCodeRewriter uninstrumentClassCategory: p]
				displayingProgress: [:p | 'Removing instrumentation from ' , p].
			PackagesToInstrument removeAllFoundIn: removedPackages.

			addedPackages 
				do: [:p | 
					BPByteCodeRewriter 
						instrumentClassCategory: p;
						enableTracingForClassCategory: p]
				displayingProgress: [:p | 'Adding instrumentation to ' , p].
			PackagesToInstrument addAll: addedPackages.
			^ true]
		ifFalse: [^ false]