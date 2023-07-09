toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		self preferencesFrame -> [self buildSearchPreferencesWith: aBuilder].
		self buttonPaneFrame -> [self buildButtonPaneWith: aBuilder].
		self resultViewFrame -> [self buildResultViewWith: aBuilder].
	}.
	windowSpec
		label: 'Babylonian Test Example Tool for: ', methodReference selector asString;
		extent: 500@400.
	 ^ aBuilder build: windowSpec