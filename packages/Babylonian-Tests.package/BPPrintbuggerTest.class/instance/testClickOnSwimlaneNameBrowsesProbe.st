tests
testClickOnSwimlaneNameBrowsesProbe
	
	|lineNameMorph accordingTraceValue browsersBefore opened|
	self initExample1WithMethodWithMultipleProbes.
	browsersBefore := self currentBrowsers.
	
	lineNameMorph := ((printbugger canvasMorph firstSubmorph submorphs 
		collect: [:a | a submorphNamed: 'lineName']) 
		reject: [:aSubmorph| aSubmorph isNil])
		first. "lineName of first line in printbugger"
	(lineNameMorph text attributesAt: 1) first actOnClickFor: self.
	
	opened := self currentBrowsers removeAll: browsersBefore; yourself.
	self assert:  (opened size = 1).
	
	opened := opened asArray first.
	accordingTraceValue := example1 probes values first first. "first traceValue of first probe"
	self assert: (opened model selectedClass == accordingTraceValue containedMethodReference actualClass).
	self assert: (opened model selectedMessageName == accordingTraceValue containedMethodReference methodSymbol).
	
	opened delete.
	