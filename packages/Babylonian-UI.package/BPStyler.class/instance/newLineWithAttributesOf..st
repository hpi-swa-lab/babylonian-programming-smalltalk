private
newLineWithAttributesOf: aBPExamplesMorph

	^ (Text newFrom: (String cr, Character startOfHeader , String cr)) 
			addAllAttributes: {BPTextAnchor new anchoredMorph: aBPExamplesMorph; yourself.
							    TextIndent tabs: 1} from: 2 to: 2;
			yourself