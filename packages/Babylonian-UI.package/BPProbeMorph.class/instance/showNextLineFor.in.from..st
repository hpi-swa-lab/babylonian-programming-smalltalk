private - ui - control flow
showNextLineFor: traceValue in: trace from: aMorph
	
	| entryForValue |
	entryForValue := trace example currentCallgraph babylonianEntries detect: [:each |
		((each respondsTo: #traceValue) and: [each traceValue == traceValue])].
	trace example currentCallgraph 
		detect: [:entry | 
			"TODO select only trace values from probes in the same method
			determine probe ids beforehand"
			(entry isKindOf: BPCallgraphEntryCustomEvent) and: [entry respondsTo: #traceValue]] 
		after: entryForValue
		ifFound: [:previousEntry | 
			"find morph, draw line"
			self containingBrowser ifNotNil: [:browser | | nextEntryMorph line |
				nextEntryMorph := browser codeTextMorph 
					findDeepSubmorphThat: [:m | 
						(m hasProperty: #bpTraceValue) and: [(m valueOfProperty: #bpTraceValue) == previousEntry traceValue]] 
					ifAbsent: [self haltOnce. ^ nil "done here, don't draw a line"].
				self haltOnce.
				line := (LineMorph 
						from: (self owner globalPointToLocal: (aMorph pointInWorld: aMorph rightCenter))
						to: (self owner globalPointToLocal: (nextEntryMorph pointInWorld: nextEntryMorph leftCenter))
						color: Color green darker
						width: 2).
				line makeForwardArrow.
				line arrowSpec: 2@3.
				self owner addMorph: line.
				aMorph setProperty: #bpNextLine toValue: line]]
		ifNone: [self haltOnce.  "dont draw a line"]