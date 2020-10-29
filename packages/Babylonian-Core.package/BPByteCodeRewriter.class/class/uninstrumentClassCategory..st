4 - uninstrument
uninstrumentClassCategory: aSymbol
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		(SystemOrganization classesIn: aSymbol) 
			do: [:class | 
				self uninstrumentClass: class theNonMetaClass.
				self uninstrumentClass: class theMetaClass]
			displayingProgress: [:selector | 'Recompiling ', aSymbol] 
			every: 100]