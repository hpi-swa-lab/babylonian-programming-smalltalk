searching
findTestsFor: aMethod
	
	| foundTests packages classes |
	
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	
	self classNamePreference
		ifTrue: [classes := classes reject: [:class | (class name asString includesSubstring: aMethod methodClass name asString) not]].
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod methodNode sourceText asString includesSubstring: ' ', aMethod selector asString, ' ')
				ifTrue: [foundTests add: class name asString -> methodSelector]]].
	^ foundTests