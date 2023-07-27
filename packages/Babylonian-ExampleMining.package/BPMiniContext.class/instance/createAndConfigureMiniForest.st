minimizing
createAndConfigureMiniForest

	miniForest := BPMiniForest
		receiver: receiver
		arguments: arguments.

	(self isGetterMethod: self method)
		ifTrue: [self addInstVar: (self instVarNumberForGetter: self method) for: receiver]
		ifFalse: [
			thisContext
				runSimulated: [self runToBeMinimizedMethod]
				contextAtEachStep: [:aContext |
					self addInstVarIfAccessReadFor: aContext.
					self addInstVarIfAccessReadQuicklyFor: aContext.
					self blacklistInstVarIfWriteAccessFor: aContext.]].

	^ miniForest