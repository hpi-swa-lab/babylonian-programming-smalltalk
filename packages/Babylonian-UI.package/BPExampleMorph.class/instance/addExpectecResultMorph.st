private - ui
addExpectecResultMorph
	
	| exampleResultMorph |
	self addSimpleTextMorph: 'expected: '.
		
	exampleResultMorph := self 
		editFieldInitialContent: self example expectedResult asString
		onChange: [:aString | 
			self example expectedResult: aString.
			self codeContentChanged]
		onAccept: [:str |self containingBrowser codeTextMorph accept].
	exampleResultMorph width: 15 * self fontWidth.
	self addMorphBack: exampleResultMorph.