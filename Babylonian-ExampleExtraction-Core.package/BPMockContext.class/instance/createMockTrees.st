mocking
createMockTrees
	
	| transcriptMode | 

	receiverMockTree := BPMockTree for: receiver.
	argumentsMockTrees := arguments collect: [:argument | BPMockTree for: argument].
	transcriptMode := false.
	
	"instVarNumber := c receiver class
								instVarIndexFor: c method referredInstVars asOrderedCollection last
								ifAbsent: [-1].
							self addInstVar: instVarNumber for: c receiver."
	
	transcriptMode ifTrue: [Transcript clear].
	
	(self isGetterMethod: self method)
		ifTrue: [self addInstVar: (self instVarNumberForGetter: self method) for: receiver]
		ifFalse: [
			thisContext
				runSimulated: [receiver perform: self methodSelector withArguments: arguments]
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
									instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first + 1.
									self addInstVar: instVarNumber for: c receiver.].
							(self instVarAccessReadQuick: c)
								ifTrue: [|instVarNumber getterMethod|
									getterMethod := c receiver class lookupSelector: (c method abstractBytecodeMessageAt: c pc) arguments first.
									instVarNumber := self instVarNumberForGetter: getterMethod.
									self addInstVar: instVarNumber for: c receiver.].
							(self instVarWriteAccess: c)
								ifTrue: [|instVarNumber|
									instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first + 1.
									self blacklistInstVar: instVarNumber for: c receiver.]]]].
	
	^ {receiverMockTree. argumentsMockTrees}