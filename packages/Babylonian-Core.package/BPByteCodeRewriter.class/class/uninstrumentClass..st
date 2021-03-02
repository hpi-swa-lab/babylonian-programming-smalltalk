4 - uninstrument
uninstrumentClass: aClass
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: aClass selectors 
				do: [:selector | self uninstrumentClass: aClass selector: selector] 
				displayingProgress: [:selector | 'Recompiling ', aClass, ' >> #', selector]]]