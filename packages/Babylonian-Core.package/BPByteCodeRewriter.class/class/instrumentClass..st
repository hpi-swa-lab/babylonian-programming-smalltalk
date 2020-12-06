1 - instrument
instrumentClass: aClass
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		self for: aClass selectors 
			do: [:selector | self instrumentClass: aClass selector: selector] 
			displayingProgress: [:selector | 'Recompiling ', aClass, ' >> #', selector]]