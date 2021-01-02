private - ui
ensureLineMorphFor: aTrace

	^ tracesMorph submorphs 
		detect: [:aSubmorph | (aSubmorph valueOfProperty: #bpTrace) ifNil: [false] ifNotNil: [:trace | trace == aTrace]]
		ifNone: [ | newLine |
			newLine := self newLineMorphFor: aTrace.
			tracesMorph addMorphBack: newLine.
			newLine]