accessing
selectedPackage
	
	^ self actualPackageList at: self packageListIndex ifAbsent: [nil]