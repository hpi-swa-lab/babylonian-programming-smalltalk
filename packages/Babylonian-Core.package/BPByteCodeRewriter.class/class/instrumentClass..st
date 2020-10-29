1 - instrument
instrumentClass: aClass
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		aClass selectors 
			do: [:selector | self instrumentClass: aClass selector: selector] 
			displayingProgress: [:selector | 'Recompiling ', aClass, ' >> #', selector] 
			every: 100]