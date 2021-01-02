serializing
serialize

	| class |
	class := self buildClass.
	class compile: (self buildTestForClass: class) classified: (self serializedMethodCategory).