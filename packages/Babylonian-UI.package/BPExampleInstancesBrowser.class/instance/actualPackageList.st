accessing
actualPackageList
	
	^ packageList ifNil: [
		packageList := (SystemNavigation default allExampleInstanceMethods 
			collect: [:aMethod | aMethod  packageInfo]) asSet 
			sorted: [:aPackage | aPackage name] ascending]