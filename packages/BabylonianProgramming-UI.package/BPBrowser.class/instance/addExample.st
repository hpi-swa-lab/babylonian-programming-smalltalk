annotations menu
addExample
	<exampleNamed: 'current browser' active: true self: '(ActiveWorld submorphsSatisfying: [:m | m isSystemWindow and: [m hasProperty: #isRunningExample]]) first model'>                                                                
	
	| interval |
	interval := self codeTextMorph text textAnchorIntervals associations 
		detect: [:assoc | assoc key anchoredMorph isExample not] 
		ifNone: [self codeTextMorph text asString lines first size + 1.
			^ true].
		
	interval stop  
	  
	