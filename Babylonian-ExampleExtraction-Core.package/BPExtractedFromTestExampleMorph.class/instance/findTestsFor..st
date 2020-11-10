test finding
findTestsFor: aCompiledMethod
	
	| foundTests packages classes |
	
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	
	classes := classes reject: [:class | (class name asString includesSubstring: aCompiledMethod methodClass name asString) not].
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod methodNode sourceText asString includesSubstring: ' ', aCompiledMethod selector asString, ' ')
				ifTrue: [foundTests add: class name asString -> methodSelector]]].
	^ foundTests