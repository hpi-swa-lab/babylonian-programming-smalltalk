ui - actions
collapseInExamplesMorph

	self containingBrowser
		ifNotNil: [self flag: #todo. "The following is very brittle --pre"
				  self owner exampleMorphCollapsed: self.].
	
	
	