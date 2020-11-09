as yet unclassified
withoutReturnNodes: aCollection
	
	^ aCollection reject: [:each | each class == BPCallgraphEntryExit]