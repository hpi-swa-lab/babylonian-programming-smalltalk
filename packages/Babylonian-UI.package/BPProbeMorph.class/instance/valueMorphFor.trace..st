private
valueMorphFor: traceValue trace: trace
	
	| morph |
	morph := traceValue tracedValue bpProbeValueMorphIn: traceValue.
	morph on: #click send: #value to: [ | selection |
		selection := MenuMorph chooseFrom: {'explore' . 'inspect' . 'browse' . 'view in callgraph'} lines: {3} title: 'Select action'.
		selection caseOf: {
			[1] -> [traceValue tracedValue explore].
			[2] -> [traceValue tracedValue inspect].
			[3] -> [traceValue tracedValue browse].
			[4] -> [self containingBrowser sidebarShowExample: trace example id: self id traceValue: traceValue]} otherwise: []].
	^ morph 