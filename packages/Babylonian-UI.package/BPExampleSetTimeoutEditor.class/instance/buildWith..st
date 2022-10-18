toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowSpecWith: aBuilder.
	windowSpec children addAll: {self buildTimeoutTextSpecWith: aBuilder.
									self buildUnitTextSpecWith: aBuilder}.
	
	^ aBuilder build: windowSpec