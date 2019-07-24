stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces.
	(newTraces notNil and: [displayedTraces ~= newTraces]) ifTrue: [
		self updateFrom: newTraces.
		displayedTraces := newTraces.].