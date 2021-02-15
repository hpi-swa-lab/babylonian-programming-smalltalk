callgraph context menus
messageIconFor: aSelector
	
	^ ToolIcons iconNamed: (ToolIcons
		iconForClass: self selectedClassOrMetaClass
		selector: aSelector)