accessing
actualPackageList
	
	^ packageList ifNil: [
		packageList := (SystemNavigation default allExamples 
			collect: [:anExample | anExample method methodClass package]) asSet 
			sorted: [:aPackage | aPackage name] ascending]