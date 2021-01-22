*Babylonian-Core-Callgraph-ByteCode
rememberNOPs: aSymbol range: anInterval blockId: aNumber

	<layer: #bpCallgraph>
	bpCallgraphNOPs ifNil: [bpCallgraphNOPs := OrderedCollection new].
	
	self assert: ({#endBlock . #endMethod . #begin . #beginRoot . #beforeBlock} includes: aSymbol).
	
	bpCallgraphNOPs add: {aSymbol . anInterval . aNumber}