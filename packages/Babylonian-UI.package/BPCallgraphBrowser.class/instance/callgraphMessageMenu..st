callgraph context menus
callgraphMessageMenu: aMenu
	
	<messageListMenu>
	<menuPriority:  100>
	^ aMenu addList: #(
			('show in sidebar' callgraphShowMessage)
			-
			('instrument for callgraphs'		callgraphInstrumentMessage)
			('enable callgraph tracing'		callgraphEnableTracingForMessage)
			('disable callgraph tracing'		callgraphDisableTracingForMessage)
			('uninstrument for callgraphs'	callgraphUninstrumentMessage)
			-);
		yourself