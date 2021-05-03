4 - uninstrument
uninstrumentAll: classes
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: classes
				do: [:class | | metaClass |
					class selectors do: [:selector | self uninstrumentClass: class selector: selector].
					metaClass := class theMetaClass.
					metaClass selectors do: [:selector | self uninstrumentClass: metaClass selector: selector]] 
				displayingProgress: [:class | 'Recompiling ', class]]]