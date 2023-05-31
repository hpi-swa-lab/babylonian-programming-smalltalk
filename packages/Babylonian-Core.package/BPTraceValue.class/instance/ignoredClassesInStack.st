private
ignoredClassesInStack

	^ {	Symbol.
		DynamicVariable class.
		ActiveEventVariable class.
		CSProcessContextInformation.
		CSMethodObject.
		CSLayeredMethod.
		CSPartialMethod.
		TestCase.
		TestResult.
		MorphicEventDispatcher.
		}, self allBabylonianInternalClasses