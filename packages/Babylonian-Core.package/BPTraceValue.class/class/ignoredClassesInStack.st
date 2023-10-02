as yet unclassified
ignoredClassesInStack

	^ IgnoredClassesInStack ifNil: [IgnoredClassesInStack := {	Symbol.
		DynamicVariable class.
		ActiveEventVariable class.
		CSProcessContextInformation.
		CSMethodObject.
		CSLayeredMethod.
		CSPartialMethod.
		TestCase.
		TestResult.
		BPProbeLogTest.
		BPExample.
		BPAbstractExample.
		MorphicEventDispatcher.
		}, self allBabylonianInternalClasses]