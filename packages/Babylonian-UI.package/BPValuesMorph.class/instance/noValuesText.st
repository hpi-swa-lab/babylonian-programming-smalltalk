ui - helper
noValuesText

	| text |
	text := 'no values' , (self trace hasTraceCompleted 
		ifTrue: [
			self trace probes 
				ifEmpty: [' - did you adjust compilerClass of this class and re-probe?']
				ifNotEmpty:[' - expression reachable?']]
		ifFalse: [' yet']).
	^ (Text fromString: text) 
		addAttribute: TextEmphasis italic;
		yourself