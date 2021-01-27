serializing
serialize
	
	| class name |
	class := self buildClass.
	name := self buildTestNameForClass: class.
	class compile: (self buildTestForClass: class named: name) classified: (self serializedMethodCategory).
	^ class methodDict at: name ifAbsent: [self error: 'Could not serialize test']