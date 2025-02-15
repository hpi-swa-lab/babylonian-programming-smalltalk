*Babylonian-UI-private
doAddLinkedAnnotationsFor: anInstanceVariableProbe in: aMethodReference

	| allRanges  styledText |
	allRanges := aMethodReference compiledMethod bpExtractVariableAssignmentRangesNamed: anInstanceVariableProbe variableName.
	styledText := aMethodReference sourceCode.
	
	allRanges do: [:aRange | anInstanceVariableProbe linkedProbes add: 
		(self styleText: styledText in: aRange referencing: aMethodReference)].
	
	allRanges ifNotEmpty: [SystemChangeNotifier uniqueInstance doSilently: 
			[aMethodReference actualClass 
				compile: (BPStyler new unstyledTextFrom: styledText) 
				classified: aMethodReference category]].