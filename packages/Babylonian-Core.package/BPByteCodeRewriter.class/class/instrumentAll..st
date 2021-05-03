1 - instrument
instrumentAll: classes
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: classes
				do: [:class | | metaClass |
					class selectors do: [:selector | self instrumentClass: class selector: selector].
					metaClass := class theMetaClass.
					metaClass selectors do: [:selector | self instrumentClass: metaClass selector: selector]] 
				displayingProgress: [:class | 'Recompiling ', class]]]