1 - instrument
instrumentClassCategory: aSymbol
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: (SystemOrganization classesIn: aSymbol) 
				do: [:class | 
					self instrumentClass: class theNonMetaClass.
					self instrumentClass: class theMetaClass]
				displayingProgress: [:selector | 'Recompiling ', aSymbol]]]