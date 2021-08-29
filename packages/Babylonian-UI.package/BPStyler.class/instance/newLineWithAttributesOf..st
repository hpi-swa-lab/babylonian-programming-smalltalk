private
newLineWithAttributesOf: aBPExamplesMorph
	
	^ (Text newFrom: (String cr , String tab , Character startOfHeader , String cr)) 
			addAllAttributes: {BPTextAnchor new anchoredMorph: aBPExamplesMorph; yourself} from: 3 to: 3;
			yourself