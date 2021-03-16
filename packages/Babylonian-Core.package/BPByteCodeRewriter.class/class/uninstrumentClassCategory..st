4 - uninstrument
uninstrumentClassCategory: aSymbol
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: (SystemOrganization classesIn:  aSymbol , '*') 
				do: [:class | 
					self uninstrumentClass: class theNonMetaClass.
					self uninstrumentClass: class theMetaClass]
				displayingProgress: [:selector | 'Recompiling ', aSymbol]]]