as yet unclassified
buildWith: builder
	
	| windowSpec max result |
	max := 0.5.
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@0.1) -> [self buildSelectionButtonWith: builder].
		(0@0.1 corner: 0.5@max) -> [self buildPackagesListWith: builder].
		(0.5@0.1 corner: 1@max) -> [self buildExamplesListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	result := builder build: windowSpec.
	^result