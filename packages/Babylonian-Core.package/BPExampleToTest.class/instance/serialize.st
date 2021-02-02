serializing
serialize
	
	| class methodName |
	class := self buildClass.
	methodName := class compile: (self buildTestForClass: class) classified: (self serializedMethodCategory).
	^ (self methodEntryFor: methodName in: class) asString.