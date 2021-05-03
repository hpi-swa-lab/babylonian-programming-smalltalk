4 - uninstrument
uninstrumentAll
	
	| classes |
	classes := Smalltalk allClasses.
	self assert: (classes includes: Morph).
	self assert: (classes includes: Morph class) not.
	self uninstrumentAll: classes