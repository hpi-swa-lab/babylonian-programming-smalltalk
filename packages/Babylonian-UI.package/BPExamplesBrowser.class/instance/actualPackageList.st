accessing
actualPackageList
	
	^ packageList ifNil: [packageList := (SystemNavigation default allExamples collect: [:e | 
			e method methodClass package]) asSet sorted: [:p | p name]]