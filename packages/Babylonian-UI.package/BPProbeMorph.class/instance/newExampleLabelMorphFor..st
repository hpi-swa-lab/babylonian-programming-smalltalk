private - ui
newExampleLabelMorphFor: aTrace
	
	| exampleLabel |
	exampleLabel := aTrace example exampleName asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [ | selection |
		selection := MenuMorph 
			chooseFrom: {'browse example' . 'browse example in new window' . 'disable example' . 'view example in sidebar' . 'open callgraph in new window'}
			lines: {3}
			title: 'Select action'.
		selection caseOf: {
			[1] -> [self containingBrowser browseReference: aTrace example method methodReference].
			[2] -> ["indirect through methodReference to call browse on the CSLayeredMethod instead of the CompiledMethod (otherwise the browser will not be able to open correctly)"
				aTrace example method methodReference browse].
			[3] -> [aTrace example isActive: false].
			[4] -> [self containingBrowser sidebarShowExample: aTrace example id: self id traceValue: nil].
			[5] -> [BPCallgraphExplorer open loadFromCallgraph: aTrace example currentCallgraph]} otherwise: []]).
	^ (TextMorph new)
		contents: exampleLabel;
		color: aTrace example color;
		yourself