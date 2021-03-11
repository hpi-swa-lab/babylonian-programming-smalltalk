recording
addExampleReceiverMock
	
	| arguments receiver usedVariables arrivedAtMethod selector mockReceiver originalReceiver originalArguments |
	     
	self selectedRecording ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].
	
	originalReceiver := self selectedRecording first .
	originalArguments := self selectedRecording second.
	receiver := originalReceiver copy.
	arguments :=  originalArguments copy.
	"context := Context newForMethod: self method."
	
	usedVariables := Dictionary new.
	arrivedAtMethod := false. "this can probably be removed, try it and then decide"
	"usedVariables inspect."
	selector := self method selector.
		
	thisContext
		runSimulated: [receiver perform: selector withArguments: arguments]
		contextAtEachStep: [:c |
			Transcript showln: (c method abstractBytecodeMessageAt: c pc).
			arrivedAtMethod
				ifTrue: [
					"Transcript showln: (c method abstractBytecodeMessageAt: c pc)."
					((c method abstractBytecodeMessageAt: c pc) printString includesSubstring: 'pushReceiverVariable:')
						ifTrue: [|instVarNumber|
							instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first + 1.
							"usedVariables add: (receiver class allInstVarNames at: instVarNumber)->((receiver instVarAt: instVarNumber))"
							usedVariables add: instVarNumber->((receiver instVarAt: instVarNumber))]]
				ifFalse: [((c method abstractBytecodeMessageAt: c pc) printString includesSubstring: 'send: #perform:withArguments:')
					ifTrue: [arrivedAtMethod := true]]].
			
	mockReceiver := receiver class new.
	usedVariables keysDo: [:instVarNumber | mockReceiver
		instVarAt: instVarNumber
		put: (originalReceiver instVarAt: instVarNumber)].
	mockReceiver inspect.
	self addExampleWith: mockReceiver and: originalArguments.