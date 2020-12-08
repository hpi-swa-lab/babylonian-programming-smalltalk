serializing
serialized
	"Serialize example to test-method"
	
	| class |

	class := self buildClass.
	class compile: (self buildTestForClass: class) classified: (self serializedMethodCategory)