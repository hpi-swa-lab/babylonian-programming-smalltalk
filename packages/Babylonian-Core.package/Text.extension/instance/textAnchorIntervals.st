*Babylonian-Core
textAnchorIntervals
	
 	<exampleNamed: 'basic' active: true self: #exampleWithAnchoredMorph>      
	| intervals interval |
	intervals := Dictionary new.
	runs withStartStopAndValueDo: [:start :stop :attribs | 
			attribs do: [:attrib | 
				attrib anchoredMorph ifNotNil: [
					interval := intervals at: attrib ifAbsent: [start to: stop].
					intervals at: attrib put: (interval start to: stop)]]].	
	^ "<bpProbe id: 3872433>"intervals"</bpProbe>"