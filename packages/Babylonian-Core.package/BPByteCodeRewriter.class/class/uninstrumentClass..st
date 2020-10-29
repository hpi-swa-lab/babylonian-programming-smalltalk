4 - uninstrument
uninstrumentClass: aClass
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		aClass selectors 
			do: [:selector | self uninstrumentClass: aClass selector: selector] 
			displayingProgress: [:selector | 'Recompiling ', aClass, ' >> #', selector] 
			every: 100]