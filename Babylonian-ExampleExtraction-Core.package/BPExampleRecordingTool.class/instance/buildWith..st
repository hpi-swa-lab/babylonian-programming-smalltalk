toolbuilder
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0corner: 1@0.1) -> [self buildButtonPaneWith: aBuilder].
		(0@0.1corner: 1@1) -> [self buildResultViewWith: aBuilder].
	}.
	windowSpec
		label: 'Babylonian recording Tool';
		extent: 250@500.
	 ^ aBuilder build: windowSpec