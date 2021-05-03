3 - disable tracing
disableTracingForClassCategory: aSymbol
	
	
	(SystemOrganization classesIn: aSymbol) do: [:class |
		self disableTracingForClass: class theNonMetaClass.
		self disableTracingForClass: class theMetaClass]