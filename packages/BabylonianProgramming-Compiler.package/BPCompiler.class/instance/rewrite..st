private
rewrite: originalCode

	<exampleNamed: 'simple rewrite' active: true self: #new with: '''keyStroke: evt
	<exampleNamed: ''''remove anchor''''
		active: true 
		self: #anchoredMorphsInstance 
		with: ''''KeyboardEvent new''''>
	  
	| view previousAnchors  |
	super keyStroke: evt.'''>                                                
	| parseResult | 
	parseResult := BPSmalltalkGrammar
					match: originalCode asString
					startingFrom: #MethodDeclaration.
	 
	"<bpProbe id: 5791915>"parseResult"</bpProbe>" succeeded. 
	
	^ "<bpProbe id: 2874785>"parseResult succeeded"</bpProbe>"
		ifTrue: ["<bpProbe id: 625126>"self rewriter value: parseResult"</bpProbe>"]
		ifFalse: [Error signal: 'parse failed']