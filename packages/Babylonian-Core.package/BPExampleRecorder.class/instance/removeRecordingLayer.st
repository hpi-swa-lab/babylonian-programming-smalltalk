private-recording
removeRecordingLayer

	#bpExampleRecording asLayer allContainingPartialMethods do: [:partialMethod | 
		| method |
		method := partialMethod methodClass >> partialMethod selector.
		method isContextSMethod ifTrue: [
			method removePartialMethod: partialMethod]].