actions
openInBrowser

	self containingBrowser 
		ifNil: [ToolSet 
				browse: self example method methodClass 
				selector: self example method selector asSymbol]
		ifNotNil: [self containingBrowser browseReference: 
			(MethodReference 
				class: self example method methodClass
			      selector: self example method selector)]