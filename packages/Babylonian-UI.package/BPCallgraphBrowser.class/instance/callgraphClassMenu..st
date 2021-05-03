callgraph context menus
callgraphClassMenu: aMenu
	
	<classListMenu>
	<menuPriority:  100>
	^ aMenu addList: #(
			('instrument for callgraphs'		callgraphInstrumentClass)
			('enable callgraph tracing'		callgraphEnableTracingForClass)
			('disable callgraph tracing'		callgraphDisableTracingForClass)
			('uninstrument for callgraphs'	callgraphUninstrumentClass)
			-);
		yourself