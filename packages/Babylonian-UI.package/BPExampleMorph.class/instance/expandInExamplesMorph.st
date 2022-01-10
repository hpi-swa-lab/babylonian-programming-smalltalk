ui - actions
expandInExamplesMorph

	self containingBrowser 
		ifNotNil: [self flag: #todo. "The following is very brittle --pre"
				  self owner owner exampleMorphExpanded: self.].
	
	