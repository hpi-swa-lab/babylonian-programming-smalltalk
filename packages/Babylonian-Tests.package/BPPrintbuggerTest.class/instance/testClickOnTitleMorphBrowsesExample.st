tests
testClickOnTitleMorphBrowsesExample
	
	|titleMorph browsersBefore opened|
	self initExample1WithMethodWithMultipleProbes.
	browsersBefore := self currentBrowsers.
	
	titleMorph := printbugger canvasMorph firstSubmorph firstSubmorph.
	(titleMorph text attributesAt: 1) first actOnClickFor: self.
	
	opened := self currentBrowsers removeAll: browsersBefore; yourself.
	self assert:  (opened size = 1).
	
	opened := opened asArray first.
	self assert: (opened model selectedClass == example1 method methodClass).
	self assert: (opened model selectedMessageName == example1 method selector).
	
	opened delete.
	