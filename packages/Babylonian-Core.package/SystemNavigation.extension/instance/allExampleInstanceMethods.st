*Babylonian-Core
allExampleInstanceMethods
	
	^ SystemNavigation default allMethodsSelect: [:m | (m hasPragma: #exampleInstance) or: [m hasPragma: #exampleInstance:]]