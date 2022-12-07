private - ui - control flow
showPreviousLineFor: traceValue in: trace from: aMorph
	
	| entryForValue |
	entryForValue := trace example currentCallgraph babylonianEntries detect: [:each |
		((each respondsTo: #traceValue) and: [each traceValue = traceValue])].
	trace example currentCallgraph 
		detect: [:entry | 
			"TODO select only trace values from probes in the same method
			determine probe ids beforehand"
			(entry isKindOf: BPCallgraphEntryCustomEvent) and: [entry respondsTo: #traceValue] and: [entry methodReference = self methodReference]] 
		before: entryForValue
		ifFound: [:previousEntry | 
			"find morph, draw line"
			self containingBrowser ifNotNil: [:browser | | previousEntryMorph line |
				previousEntryMorph := browser codeTextMorph 
					findDeepSubmorphThat: [:m | 
						(m hasProperty: #bpTraceValue) and: [(m valueOfProperty: #bpTraceValue) == previousEntry traceValue]] 
					ifAbsent: [self haltOnce. ^ nil "done here, don't draw a line"].
				line := (LineMorph 
						from: (self owner globalPointToLocal: (aMorph pointInWorld: aMorph leftCenter))
						to: (self owner globalPointToLocal: (previousEntryMorph pointInWorld: previousEntryMorph rightCenter))
						color: Color red lighter
						width: 2).
				line makeBackArrow.
				line arrowSpec: 2@3.
				self owner addMorph: line.
				aMorph setProperty: #bpPreviousLine toValue: line]]
		ifNone: [self haltOnce.  "dont draw a line"]