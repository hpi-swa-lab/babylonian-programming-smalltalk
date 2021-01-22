choosing packages
configure
	
	"returns true if any changes were made"

	| originalPackages addedPackages removedPackages |
	acceptChanges := false.
	instrumentedPackages := self packagesToInstrument asOrderedCollection sorted.
	originalPackages := instrumentedPackages copy.
	self updateUninstrumentedPackages.
	
	ToolBuilder open: self.
	acceptChanges ifFalse: [^ false].
	
	removedPackages := originalPackages copyWithoutAll: self instrumentedPackages.
	addedPackages := self instrumentedPackages copyWithoutAll: originalPackages.
	(removedPackages isEmpty and: [addedPackages isEmpty]) ifTrue: [^ false].
	
	(self confirm: 'This will instrument the newly selected 
packages and can take considerable time!')
		ifTrue: [
			removedPackages do: [:p | 
				BPByteCodeRewriter uninstrumentClassCategory: p].
			PackagesToInstrument removeAll: removedPackages.
			addedPackages do: [:p | 
				BPByteCodeRewriter instrumentClassCategory: p].
			PackagesToInstrument addAll: addedPackages.
			^ true]
		ifFalse: [^ false]