recording
addExampleReceiverMock
	
	| arguments receiver usedVariables arrivedAtMethod selector |
	     
	self selectedRecording ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].
	
	receiver := self selectedRecording first.
	arguments := self selectedRecording second.
	"context := Context newForMethod: self method."
	
	usedVariables := OrderedCollection new.
	arrivedAtMethod := false.
	
	usedVariables inspect.
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
							instVarNumber := (c method abstractBytecodeMessageAt: c pc) arguments first +1.
							usedVariables add: (receiver class allInstVarNames at: instVarNumber)->((receiver instVarAt: instVarNumber))]]
				ifFalse: [((c method abstractBytecodeMessageAt: c pc) printString includesSubstring: 'send: #perform:withArguments:')
					ifTrue: [arrivedAtMethod := true]]].