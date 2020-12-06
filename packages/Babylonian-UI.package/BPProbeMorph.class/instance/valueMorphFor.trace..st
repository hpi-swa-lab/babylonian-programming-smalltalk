private
valueMorphFor: traceValue trace: trace
	
	| morph wrapperMorph |
	morph := traceValue tracedValue bpProbeValueMorphIn: traceValue.
	morph on: #click send: #value to: [ | selection |
		selection := MenuMorph chooseFrom: {'explore' . 'inspect' . 'browse' . 'view in sidebar' . 'select in callgraph'} lines: {3} title: 'Select action'.
		selection caseOf: {
			[1] -> [traceValue tracedValue explore].
			[2] -> [traceValue tracedValue inspect].
			[3] -> [traceValue tracedValue browse].
			[4] -> [self containingBrowser sidebarShowExample: trace example id: self id traceValue: traceValue].
			[5] -> [| entry callgraph |
				callgraph := trace example currentCallgraph.
				entry := callgraph babylonianEntries detect: [:each | (each respondsTo: #traceValue) and: [each traceValue == traceValue]].
				BPSelectedCallgraphEntries select: entry fromCallgraph: callgraph forExample: trace example]} otherwise: []].
	
	^ true ifTrue: [
		wrapperMorph := BPMorphWithBottomBorder new 
		bottomColor: (self colorForTraceValue: traceValue inTrace: trace);
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorphBack: morph.
	  
		wrapperMorph] ifFalse: [morph]