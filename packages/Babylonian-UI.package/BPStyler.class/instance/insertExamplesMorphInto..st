private
insertExamplesMorphInto: text

	| bpExamples bpExamplesMorph decoration |
	bpExamples := BPExamplesAnnotation new
		methodReference: selectedMethod;
		yourself. 
	bpExamplesMorph := bpExamples asMorph.
	decoration := BPTextDecoration new
		anchoredMorph: bpExamplesMorph;
		yourself.
	text addAttribute: decoration from: 1 to: 1.
	^ text