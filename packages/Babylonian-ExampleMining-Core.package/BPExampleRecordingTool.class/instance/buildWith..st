toolbuilder
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		self preferencesFrame -> [self buildPreferencesWith: aBuilder].
		self buttonPaneFrame -> [self buildButtonPaneWith: aBuilder].
		self resultViewFrame -> [self buildResultViewWith: aBuilder].
		self scriptButtonsFrame -> [self buildScriptButtons: aBuilder].
		self scriptInputFrame -> [self buildScriptInput: aBuilder].
	}.
	windowSpec
		label: 'Babylonian Recording Tool for: ', methodReference selector asString;
		extent: 500@400.
	 ^ aBuilder build: windowSpec