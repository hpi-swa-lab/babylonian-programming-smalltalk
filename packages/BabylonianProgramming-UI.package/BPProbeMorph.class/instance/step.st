stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces.
	(newTraces notNil and: [newTraces notEmpty])  
		ifTrue: [
			newTraces ~= displayedTraces ifTrue: [
				self updateFrom: newTraces.
				displayedTraces := newTraces]]
		ifFalse: [
			self updateFrom: self emptyTraces]