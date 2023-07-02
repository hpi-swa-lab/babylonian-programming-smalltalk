ui
visualize

	self values ifEmpty: [ self addMorph: self noValuesTextMorph. ^ self.].
	self values first traceHasFailedBefore ifTrue: [ self addMorph: self exceptionTextMorph. ^ self].
	
	self addValues.