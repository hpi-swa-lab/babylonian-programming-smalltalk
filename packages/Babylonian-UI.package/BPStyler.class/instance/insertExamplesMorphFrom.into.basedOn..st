private
insertExamplesMorphFrom: parseResult into: text basedOn: annotations
	
	| bpExamples endOfHeaderIndex lineAfterHeader |
	bpExamples := BPExamplesAnnotation new
		exampleAnnotations: (annotations select: [:a | a isExample]);
		yourself.
	endOfHeaderIndex := self extractEndOfMethodHeader value: parseResult.
	
	self flag: #todo. "tidy this up... --pre"
	lineAfterHeader := text asString lineCorrespondingToIndex: endOfHeaderIndex + 2.
	^ lineAfterHeader withBlanksTrimmed 
		ifEmpty: ["If there already is an empty line, there might already be an examples
			morph, if not we can use it"
			((lineAfterHeader at: 2 ifAbsent: [nil]) = Character startOfHeader and: [
				(text attributesAt: endOfHeaderIndex + 3) anySatisfy: [:a | 
					(a isKindOf: BPTextAnchor) and: [a anchoredMorph isExamples]]]) 
				ifTrue: [text]
				ifFalse: [
					text 
						copyReplaceFrom: endOfHeaderIndex + 1
						to: endOfHeaderIndex + 1 + lineAfterHeader size + 1
						with: ((Text newFrom: (String cr , String tab , Character startOfHeader , String cr)) 
								addAllAttributes: {BPTextAnchor new anchoredMorph: bpExamples asMorph; yourself} from: 3 to: 3;
								yourself)]]
		ifNotEmpty: [
			text 
				copyReplaceFrom: endOfHeaderIndex + 1
				to: endOfHeaderIndex + 1
				with: ((Text newFrom: (String cr , String tab , Character startOfHeader , String cr)) 
						addAllAttributes: {BPTextAnchor new anchoredMorph: bpExamples asMorph; yourself} from: 3 to: 3;
						yourself)].