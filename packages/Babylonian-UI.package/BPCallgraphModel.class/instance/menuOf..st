as yet unclassified
menuOf: aMenuMorph
	
	| entry |
	entry := self getSelectedEntry.
	entry menu: aMenuMorph.
	
	aMenuMorph add: 'select' action: [ | example |
		example := BPActiveExamples value examples detect: [:each | each currentCallgraph == callgraph].
		BPSelectedCallgraphEntries select: self getSelectedEntry fromCallgraph: example currentCallgraph forExample: example].
	
	^ aMenuMorph