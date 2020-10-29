callgraphs
callgraphMessageMenu: aMenu
	
	<messageListMenu>
	<menuPriority:  100>
	^ aMenu addList: #(
			('instrument for callgraphs'		callgraphInstrumentMessage)
			('enable callgraph tracing'		callgraphEnableTracingForMessage)
			('disable callgraph tracing'		callgraphDisableTracingForMessage)
			('uninstrument for callgraphs'	callgraphUninstrumentMessage)
			-);
		yourself