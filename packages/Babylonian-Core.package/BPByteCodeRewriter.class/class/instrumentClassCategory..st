1 - instrument
instrumentClassCategory: aSymbol
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		(SystemOrganization classesIn: aSymbol) 
			do: [:class | 
				self instrumentClass: class theNonMetaClass.
				self instrumentClass: class theMetaClass]
			displayingProgress: [:selector | 'Recompiling ', aSymbol] 
			every: 100]