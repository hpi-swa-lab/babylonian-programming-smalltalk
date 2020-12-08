building
buildMethodCall
	"Builds the method body as string. example: '(Factory new) doSomething: 2 with: 4'"

	^ '({1}) {2}' format: {
		self serializedReceiverConstructor.
		self combineMethod: (self serializedMethodName) withParameters: (self serializedMethodParameters)}