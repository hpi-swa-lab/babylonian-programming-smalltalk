as yet unclassified
contentsSelection
	
	^ (selectedPC notNil and: [selectedPC first = self methodReference]) 
		ifTrue: [ | method |
			"You want this to work? Then first figure out how to generate a source map for the
			styled method, that is based on the instrumented version. Done?
			Go to BPCallgraphModel>>#setSelectedEntry: and re-add the event triggering"
			method := selectedPC first compiledMethod.
			method debuggerMap
				rangeForPC: selectedPC second
				in: method
				contextIsActiveContext: false]
		ifFalse: [super contentsSelection]