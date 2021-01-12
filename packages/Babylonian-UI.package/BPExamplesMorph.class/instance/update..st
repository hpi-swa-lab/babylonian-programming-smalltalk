updating
update: anAspect
	
	anAspect = #bpExamples ifTrue: [
		self annotation examples ifNotNil: ["We are still active"
			self updateExampleMorphsFrom: self annotation examples]].