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
				contextAtEachStep: [:c |
					(self instVarAccessRead: c)
						ifTrue: [|instVarNumber|
							instVarNumber := self insVarNumberFor: c.
							self
								addInstVar: instVarNumber
								for: c receiver].
					(self instVarAccessReadQuick: c)
						ifTrue: [|instVarNumber getterMethod|
							getterMethod := self getterMethodFor: c.
							instVarNumber := self instVarNumberForGetter: getterMethod.
							self
								addInstVar: instVarNumber
								for: (self getterReceiverFor: c)].
					(self instVarWriteAccess: c)
						ifTrue: [|instVarNumber|
							instVarNumber := self insVarNumberFor: c.
							self
								blacklistInstVar: instVarNumber
								for: c receiver]]].
	
	^ miniForest