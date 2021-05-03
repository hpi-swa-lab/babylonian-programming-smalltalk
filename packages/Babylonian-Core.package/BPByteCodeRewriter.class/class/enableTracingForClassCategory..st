2 - enable tracing
enableTracingForClassCategory: aSymbol
	
	
	(SystemOrganization classesIn: aSymbol) do: [:class |
		self enableTracingForClass: class theNonMetaClass.
		self enableTracingForClass: class theMetaClass]