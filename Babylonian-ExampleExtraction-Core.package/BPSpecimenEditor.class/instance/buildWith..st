toolbuilder
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		self registryViewFrame -> [self buildRegistryViewWith: aBuilder].
		self specimenViewFrame -> [self buildSpecimenViewWith: aBuilder].
		self mockingViewFrame -> [self buildMockingViewWith: aBuilder].
	}.
	windowSpec
		label: 'Specimen Editor for: ', specimenUUIDSymbol asString;
		extent: 500@400.
		
	 ^ aBuilder build: windowSpec