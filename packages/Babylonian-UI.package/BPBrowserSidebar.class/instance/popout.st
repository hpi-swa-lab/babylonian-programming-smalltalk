as yet unclassified
popout
	
	| builder instance spec windowSpec |
	builder := ToolBuilder default.
	instance := self copy.
	instance when: #browseMethod evaluate: [:methodReference | methodReference browse].
	
	instance breakDependents. 
	self flag: #todo. "breakDependents is no longer needed in Squeak 6.0"
	
	spec := instance buildWith: builder.
	windowSpec := instance buildWindowWith: builder.
	windowSpec label: 'Babylonian Callgraph'.
	windowSpec children addAll: spec children.
	(builder build: windowSpec) openAsTool