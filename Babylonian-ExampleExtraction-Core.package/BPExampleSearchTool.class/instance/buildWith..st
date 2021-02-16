toolbuilder
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0corner: 1@0.05) -> [self buildSearchPreferencesWith: aBuilder].
		(0@0.05corner: 1@0.1) -> [self buildButtonPaneWith: aBuilder].
		(0@0.1corner: 1@1) -> [self buildResultViewWith: aBuilder].
	}.
	windowSpec
		label: 'Babylonian search Tool';
		extent: 500@400.
	 ^ aBuilder build: windowSpec