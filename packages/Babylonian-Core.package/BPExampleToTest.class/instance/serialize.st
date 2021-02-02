serializing
serialize

	| class methodName |
	class := self buildClass.
	methodName := self buildTestNameForClass: class.
	class compile: (self buildTestForClass: class named: methodName) classified: (self serializedMethodCategory).
	^ class methodDict at: methodName asSymbol