as yet unclassified
rewrite: originalCode
	<layer: #bpInstrumented>

	<exampleNamed: 'simple rewrite' active: true self: #new with: '''keyStroke: evt
	<exampleNamed: ''''remove anchor''''
		active: true 
		self: #anchoredMorphsInstance 
		with: ''''KeyboardEvent new''''>
	  
	| view previousAnchors  |
	super keyStroke: evt.'''>                                                  
	| parseResult | 
	self bpBlock: 1 enteredAt: thisContext.
parseResult := BPSmalltalkGrammar
					match: originalCode asString
					startingFrom: #MethodDeclaration.
	 
	(self bpTrace: [parseResult] forProbe: 5791915 inContext: thisContext) succeeded.^ self bpBlock: 1 leftWith: ((self bpTrace: [parseResult succeeded] forProbe: 2874785 inContext: thisContext)
		ifTrue: [self bpBlock: 2 enteredAt: thisContext.
self bpBlock: 2 leftWith: ((self bpTrace: [self rewriter value: parseResult] forProbe: 625126 inContext: thisContext)) at: thisContext]
		ifFalse: [self bpBlock: 3 enteredAt: thisContext.
self bpBlock: 3 leftWith: (Error signal: 'parse failed') at: thisContext]) at: thisContext