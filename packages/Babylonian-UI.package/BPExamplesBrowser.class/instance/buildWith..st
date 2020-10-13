toolbuilder
buildWith: builder
	
	| windowSpec max result |
	self wantsOptionalButtons ifTrue:[max := 0.3] ifFalse:[max := 0.3].
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.5@max) -> [self buildPackagesListWith: builder].
		(0.5@0 corner: 1@max) -> [self buildExamplesListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	result := builder build: windowSpec.
	^result