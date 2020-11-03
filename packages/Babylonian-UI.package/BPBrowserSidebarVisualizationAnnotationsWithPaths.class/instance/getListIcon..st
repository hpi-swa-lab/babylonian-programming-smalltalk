as yet unclassified
getListIcon: aNumber
	
	| entry |
	entry := self getAnnotations at: aNumber. 
	^ (entry isKindOf: BPCallgraphEntryBPProbeOrAssertion) ifTrue: [entry iconForId] ifFalse: [ToolIcons blank]