*Babylonian-Core
containsExamples

	self methodsDo: [:m |
		m bpExamples ifNotEmpty: [^ true]].
	^ false