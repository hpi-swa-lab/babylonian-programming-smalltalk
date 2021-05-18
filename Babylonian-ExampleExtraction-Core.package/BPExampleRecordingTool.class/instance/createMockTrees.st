recording
createMockTrees
	
	| receiver arguments transcriptMode selector receiverMockTree argumentMockTrees | 

	receiver := self selectedRecording first copy.
	arguments :=  self selectedRecording second copy.
	selector := self method selector.
	
	receiverMockTree := BPMockTree for: receiver.
	argumentMockTrees := arguments collect: [:argument | BPMockTree for: argument].
	transcriptMode := false.
	
	thisContext
		runSimulated: [receiver perform: selector withArguments: arguments]
		contextAtEachStep: [:c |
			transcriptMode
				ifTrue: [
					"((c method abstractBytecodeMessageAt: c pc) asString includesSubstring: ('blockReturnTop'))
					ifTrue: [self halt]"
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
	^ {receiverMockTree. argumentMockTrees}