mocking
createMockForest
	
	mockForest := BPMiniForest
		receiver: receiver
		arguments: arguments.
	"transcriptMode := true."
		
	transcriptMode ifTrue: [Transcript clear].
	(self isGetterMethod: self method)
		ifTrue: [self addInstVar: (self instVarNumberForGetter: self method) for: receiver]
		ifFalse: [
			thisContext
				runSimulated: [self runToBeMockedMethod]
				contextAtEachStep: [:c |
					transcriptMode
						ifTrue: [
							"((c method abstractBytecodeMessageAt: c pc) asString includesSubstring: ('blockReturnTop'))
							ifTrue: [self halt]."
							"c receiver class = BPClassWithInstanceVariables ifTrue: [self halt]."
							Transcript showln: (c method abstractBytecodeMessageAt: c pc) asString, ' FOR Receiver: ', c receiver class]
						ifFalse: [
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
											for: c receiver]]]].
	
	^ mockForest