choosing packages
updateUninstrumentedPackages
	
	uninstrumentedPackages := self categoriesPlusPrefixes reject: [:package |
		self instrumentedPackages
			anySatisfy: [:tracked | package = tracked or: [package beginsWith: tracked, '-']]]