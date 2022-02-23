private
browseFor: aCompiledMethod

	self containingBrowser 
		ifNil: [ToolSet 
				browse: aCompiledMethod methodClass 
				selector: aCompiledMethod selector asSymbol]
		ifNotNil: [self containingBrowser browseReference: 
			(MethodReference 
				class: aCompiledMethod methodClass
			      selector: aCompiledMethod selector)]