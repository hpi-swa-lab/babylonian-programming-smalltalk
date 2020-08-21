private - ui
ensureLineMorphFor: aTrace

	^ tracesMorph submorphs 
		detect: [:m | (m valueOfProperty: #bpTrace) ifNil: [false] ifNotNil: [:t | t == aTrace]]
		ifNone: [ | newLine |
			newLine := self newLineMorphFor: aTrace.
			tracesMorph addMorphBack: newLine.
			newLine]