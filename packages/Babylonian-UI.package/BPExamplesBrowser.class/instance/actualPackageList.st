accessing
actualPackageList
	
	^ packageList ifNil: [
		packageList := (SystemNavigation default allExamples 
			collect: [:anExample | PackageOrganizer default packageOfMethod: anExample method methodReference]) asSet
			sorted: [:aPackage | aPackage name] ascending]