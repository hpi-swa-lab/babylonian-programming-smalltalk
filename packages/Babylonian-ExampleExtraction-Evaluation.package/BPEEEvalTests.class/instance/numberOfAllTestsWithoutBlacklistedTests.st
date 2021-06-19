eval
numberOfAllTestsWithoutBlacklistedTests
	
	| classes foundTests |
	classes := self allTestClassesWithBlacklist.
	
	foundTests := OrderedCollection new.

	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			foundTests add: class name asString -> methodSelector]].
	
	^ foundTests size