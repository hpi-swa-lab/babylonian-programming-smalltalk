private - ui - texts
noValuesTextFor: aTrace
	
	| text |
	text := 'no values' , (aTrace hasTraceCompleted 
		ifTrue: [
			aTrace probes 
				ifEmpty: [' - did you adjust compilerClass of this class and re-probe?']
				ifNotEmpty:[' - expression reachable?']]
		ifFalse: [' yet']).
	^ (Text fromString: text) 
		addAttribute: (TextColor color: Color lightGray); 
		addAttribute: TextEmphasis italic;
		yourself