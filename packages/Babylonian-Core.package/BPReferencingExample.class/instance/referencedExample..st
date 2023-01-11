accessing
referencedExample: anExample

	anExample == self ifTrue: [self error: 'Referencing example can not reference itself'].
	referencedExample := anExample.