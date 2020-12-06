private - ui
newExampleLabelMorphFor: aTrace
	
	| exampleLabel |
	exampleLabel := aTrace example exampleName asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		MenuMorph new
			addTitle: 'example';
			add: 'browse example' action: [self containingBrowser browseReference: aTrace example method methodReference];
			add: 'browse example in new window' action: ["indirect through methodReference to call browse on the CSLayeredMethod instead of the CompiledMethod (otherwise the browser will not be able to open correctly)"
				aTrace example method methodReference browse];
			add: 'disable example' action: [aTrace example isActive: false];
			addLine;
			add: 'view example in sidebar' action: [self containingBrowser sidebarShowExample: aTrace example id: self id traceValue: nil];
			add: 'open callgraph in new window' action: [BPCallgraphExplorer open loadFromCallgraph: aTrace example currentCallgraph];
			popUpInWorld]).
	
	^ (TextMorph new)
		contents: exampleLabel;
		color: aTrace example color;
		readOnly: true;
		yourself