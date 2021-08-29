private
insertExamplesMorphFrom: parseResult into: text basedOn: annotations
	
	| bpExamples endOfHeaderIndex lineAfterHeader newText bpExamplesMorph |
	bpExamples := BPExamplesAnnotation new
		methodReference: selectedMethod;
		yourself. 
	endOfHeaderIndex := self extractEndOfMethodHeader value: parseResult.
	bpExamplesMorph := bpExamples asMorph.
	lineAfterHeader := text asString lineCorrespondingToIndex: endOfHeaderIndex + 2.
	
	newText := lineAfterHeader withBlanksTrimmed 
		ifEmpty: [
			self extractExistingExamplesMorphFrom: text
				headerEndingAt: endOfHeaderIndex
				ifFound: [:oldExamplesAnchor | bpExamplesMorph := oldExamplesAnchor anchoredMorph. text]
				ifNone: [self insertExamplesMorph: bpExamplesMorph 
							into: text 
							withNewLineStartingFrom: endOfHeaderIndex + 1 
							to: endOfHeaderIndex + 1 + lineAfterHeader size + 1]]
		ifNotEmpty: [
			self insertExamplesMorph: bpExamplesMorph 
				into: text 
				withNewLineStartingFrom: endOfHeaderIndex + 1 
				to: endOfHeaderIndex + 1].
			
	bpExamplesMorph methodReference: selectedMethod.
	^ newText