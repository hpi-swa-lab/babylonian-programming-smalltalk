1 - instrument
instrumentAll
	
	| classes |
	classes := Smalltalk allClasses.
	self assert: (classes includes: Morph).
	self assert: (classes includes: Morph class) not.
	self instrumentAll: classes