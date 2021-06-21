private
currentBrowsers
	
	^ (Project current world submorphsSatisfying: [:each |
		(each isKindOf: SystemWindow)
			and: [each model isKindOf: Browser]]) asSet