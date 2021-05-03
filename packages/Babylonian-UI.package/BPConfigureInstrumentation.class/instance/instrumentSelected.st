actions
instrumentSelected
	
	| package conflictingPackages |
	package := (self uninstrumentedPackagesWithTitle at: self selectionUninstrumented).
	
	conflictingPackages := self instrumentedPackages select: [:p | p beginsWith: package].
	
	conflictingPackages ifNotEmpty: [
		(self confirm: 'To instrument this package, we will first remove ',
			(conflictingPackages joinSeparatedBy: ', '),
			', because the new packages is a prefix/super package for these.', String cr,
			'(Otherwise the package contents will be duplicated)') ifFalse: [^ self]].
	
	self instrumentedPackages
		removeAll: conflictingPackages;
		add: package.
	
	self updateUninstrumentedPackages.
	
	self changed: #instrumentedPackagesWithTitle.
	self changed: #uninstrumentedPackagesWithTitle.
	self changed: #hasUninstrumentedSelection.
	self changed: #hasInstrumentedSelection