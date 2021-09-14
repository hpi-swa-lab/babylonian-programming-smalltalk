private - ui - texts
noValuesTextFor: aTrace
	
	| text |
	text := 'no values' , (aTrace hasTraceCompleted 
		ifTrue: ['']
		ifFalse: [' yet']).
	^ (Text fromString: text) 
		addAttribute: (TextColor color: Color lightGray); 
		addAttribute: TextEmphasis italic;
		yourself