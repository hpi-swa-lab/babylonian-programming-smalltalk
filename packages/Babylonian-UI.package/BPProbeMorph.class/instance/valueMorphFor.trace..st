private
valueMorphFor: traceValue trace: trace
	
	| morph wrapperMorph |
	morph := traceValue tracedValue bpProbeValueMorphIn: traceValue.
	morph on: #mouseEnter send: #value to: [
		self 
			showPreviousLineFor: traceValue in: trace from: morph;
			showNextLineFor: traceValue in: trace from: morph].
	morph on: #mouseLeave send: #value to: [
		(morph hasProperty: #bpPreviousLine) ifTrue: [
			(morph valueOfProperty: #bpPreviousLine) abandon].
		(morph hasProperty: #bpNextLine) ifTrue: [
			(morph valueOfProperty: #bpNextLine) abandon].].
	morph on: #click send: #value to: [ | selection labels |
		labels := {'explore' . 'view in sidebar'}.
		BPBrowserSidebar showFancyAnalysisInCallgraph ifTrue: [
			labels := labels , {'select for callgraph analysis'}].
		selection := MenuMorph chooseFrom: labels lines: {} title: 'Select action'.
		selection caseOf: {
			[1] -> [traceValue tracedValue explore].
			[2] -> [self containingBrowser sidebarShowExample: trace example id: self id traceValue: traceValue].
			[3] -> [self selectInSidebarTracedValue: traceValue forExample: trace example]} 
			otherwise: []].
	morph setProperty: #bpTraceValue toValue: traceValue. 
	
	^ false ifTrue: [
		wrapperMorph := BPMorphWithBottomBorder new 
		bottomColor: (self colorForTraceValue: traceValue inTrace: trace);
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorphBack: morph.
	  
		wrapperMorph] ifFalse: [morph]