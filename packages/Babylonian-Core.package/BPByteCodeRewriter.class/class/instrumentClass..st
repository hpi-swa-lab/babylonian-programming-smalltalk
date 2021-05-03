1 - instrument
instrumentClass: aClass
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		SystemChangeNotifier uniqueInstance doSilently: [
			self for: aClass selectors 
				do: [:selector | self instrumentClass: aClass selector: selector] 
				displayingProgress: [:selector | 'Recompiling ', aClass, ' >> #', selector]]]