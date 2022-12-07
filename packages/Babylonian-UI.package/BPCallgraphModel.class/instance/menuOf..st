as yet unclassified
menuOf: aMenuMorph
	
	| entry |
	entry := self getSelectedEntry.
	(entry class == BPCallgraphEntryEnter) ifTrue: [
		aMenuMorph add: 'browse' action: [
			self doubleClick: entry]].
	
	entry menu: aMenuMorph.
	
	aMenuMorph add: 'select' action: [ | example |
		example := BPActiveExamples value examples detect: [:each | each currentCallgraph == callgraph].
		BPSelectedCallgraphEntries select: self getSelectedEntry fromCallgraph: example currentCallgraph forExample: example].
	
	^ aMenuMorph