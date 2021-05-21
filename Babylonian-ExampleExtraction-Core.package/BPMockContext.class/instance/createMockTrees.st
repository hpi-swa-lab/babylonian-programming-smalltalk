mocking
createMockTrees
	
	|   transcriptMode  receiverMockTree argumentMockTrees | 

	receiverMockTree := BPMockTree for: receiver.
	argumentMockTrees := arguments collect: [:argument | BPMockTree for: argument].
	transcriptMode := false.
	
	transcriptMode ifTrue: [Transcript clear].
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
					((c method abstractBytecodeMessageAt: c pc) printString includesSubstring: 'pushReceiverVariable:')
						ifTrue: [|instVarNumber|
							instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first + 1.
							receiverMockTree addInstVar: instVarNumber for: c receiver.
							argumentMockTrees do: [:argumentMock | argumentMock addInstVar: instVarNumber for: c receiver]].
					((c method abstractBytecodeMessageAt: c pc) printString includesSubstring: 'popIntoReceiverVariable:')
						ifTrue: [|instVarNumber|
							instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first + 1.
							receiverMockTree blacklistInstVar: instVarNumber for: c receiver.
							argumentMockTrees do: [:argumentMock | argumentMock blacklistInstVar: instVarNumber for: c receiver]]]].
	
	lastMockTrees := {receiverMockTree. argumentMockTrees}.
	^ lastMockTrees