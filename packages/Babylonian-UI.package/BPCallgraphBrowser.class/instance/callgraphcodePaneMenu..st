callgraph context menus
callgraphcodePaneMenu: aMenu
	
	<codePaneMenu> 
	<menuPriority:  400>
	^ aMenu addList: #(
			('show in sidebar' callgraphShowMessage)
			-);
		yourself