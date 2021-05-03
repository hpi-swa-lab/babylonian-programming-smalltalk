private - ui
newExampleLabelMorphFor: anExample

	| exampleLabel |
	exampleLabel := ((String 
		streamContents: [:str | str nextPutAll: (anExample exampleName padded: #right to: 6 with: Character space)] 
		limitedTo: 6), '...') asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		MenuMorph new
			addTitle: 'example';
			add: 'browse example' action: [self containingBrowser browseReference: anExample method methodReference];
			add: 'browse example in new window' action: ["indirect through methodReference to call browse on the CSLayeredMethod instead of the CompiledMethod (otherwise the browser will not be able to open correctly)"
				anExample method methodReference browse];
			add: 'disable example' action: [anExample isActive: false];
			addLine;
			add: 'view example in sidebar' action: [self containingBrowser sidebarShowExample: anExample id: self id traceValue: nil];
			add: 'open callgraph in new window' action: [BPCallgraphExplorer open loadFromCallgraph: anExample currentCallgraph];
			popUpInWorld]).
	^ (TextMorph string: exampleLabel size: BPAnnotationMorph smallFontHeight)
		color: anExample color;
		hResizing: #rigid;
		width: BPAnnotationMorph smallFontWidth * 8;
		yourself