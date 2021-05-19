searching
findTests
	
	| foundTests packages classes |
	
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	
	self classNamePreference
		ifTrue: [classes := classes reject: [:class | (class name asString includesSubstring: self method methodClass name asString) not]].

	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			((self includesMethodSelectorConditionInMethod: compiledMethod)
				and: [self includesMethodSelectorConditionInClass: class testSelector: methodSelector])
					ifTrue: [foundTests add: class name asString -> methodSelector]]].
	
	^ foundTests