mocking
createMockForestNoTranscriptMode
	
	mockForest := BPMiniForest
		receiver: receiver
		arguments: arguments.
		
	(self isGetterMethod: self method)
		ifTrue: [self
				addInstVar: (self instVarNumberForGetter: self method)
				for: receiver]
		ifFalse: [
			thisContext
				runSimulated: [self runToBeMockedMethod]
				contextAtEachStep: [:c |
					(self instVarAccessRead: c)
						ifTrue: [|instVarNumber|
							instVarNumber := self insVarNumberFor: c.
							self
								addInstVar: instVarNumber
								for: c receiver].
					(self instVarAccessReadQuick: c)
						ifTrue: [self
							addInstVar: (self instVarNumberForGetter: (self getterMethodFor: c))
							for: (self getterReceiverFor: c)].
					(self instVarWriteAccess: c)
						ifTrue: [|instVarNumber|
							instVarNumber := self insVarNumberFor: c.
							self
								blacklistInstVar: instVarNumber
								for: c receiver]]].
	
	^ mockForest