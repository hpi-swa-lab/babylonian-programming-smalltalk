toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowSpecWith: aBuilder.
	windowSpec children addAll: {self buildExpectedResultTextSpecWith: aBuilder. 
								    self buildActualResultTextSpecWith: aBuilder.}.
	
	^ aBuilder build: windowSpec