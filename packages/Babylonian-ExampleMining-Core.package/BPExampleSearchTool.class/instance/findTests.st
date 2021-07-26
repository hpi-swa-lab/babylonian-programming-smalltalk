searching
findTests
	
	| foundTests packages classes |
	
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	
	self packageNamePreference
		ifTrue: [classes := classes reject: [:class | (class packageInfo packageName includesSubstring: (self method methodClass packageInfo packageName splitBy: '-') first) not]].
	
	self classNamePreference
		ifTrue: [classes := classes reject: [:class | (class name asString includesSubstring: self method methodClass name asString) not]].

	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(methodSelector beginsWith: 'test')
				ifTrue: [
					(((self includesMethodSelectorConditionInMethod: compiledMethod)
					and: [self tryRecordingConditionInClass: class testSelector: methodSelector])
					and: [self tryCoverageConditionInClass: class testSelector: methodSelector])
						ifTrue: [foundTests add: class name asString -> methodSelector]]]].
	
	^ foundTests