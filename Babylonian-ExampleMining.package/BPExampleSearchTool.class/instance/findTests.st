searching
findTests

	| foundTests packages classes |
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.

	self packageNamePreference
		ifTrue: [classes := classes reject: [:aClass | (self isInSamePackageAsMethod: aClass) not]].

	self classNamePreference
		ifTrue: [classes := classes reject: [:aClass | (self includesMethodClassInOwnName: aClass) not]].

	classes do: [:aClass |
		aClass methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(methodSelector beginsWith: 'test')
				ifTrue: [ (self canRecord: methodSelector in: aClass includesSelectorConditionIn: compiledMethod)  
						ifTrue: [foundTests add: aClass name asString -> methodSelector]]]].

	^ foundTests