stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self methodReference compiledMethod baseMethod propertyValueAt: #bpTrace.
	(newTraces notNil and: [displayedTraces ~= newTraces]) ifTrue: [
		self updateFrom: newTraces.
		displayedTraces := newTraces.].