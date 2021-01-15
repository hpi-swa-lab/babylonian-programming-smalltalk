callgraph
callgraphCategoryMenu: aMenu
	
	<systemCategoryMenu>
	self flag: #todo.
	^ aMenu addList: #(
			('instrument for callgraphs'		callgraphInstrumentClassCategory)
			('enable callgraph tracing'		callgraphEnableTracingForClassCategory)
			('disable callgraph tracing'		callgraphDisableTracingForClassCategory)
			('uninstrument for callgraphs'	callgraphUninstrumentClassCategory)
			-);
		yourself