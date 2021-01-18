as yet unclassified
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0corner: 0.6@1) -> [self buildButtonPaneWith: aBuilder].
		(0.6@0corner: 1@1) -> [self buildResultViewWith: aBuilder].
	}.
	windowSpec
		label: 'Babylonian recording Tool';
		extent: 250@500.
	 ^ aBuilder build: windowSpec