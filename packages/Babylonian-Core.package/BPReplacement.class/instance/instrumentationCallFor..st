serialization
instrumentationCallFor: currentEnclosedSourceCode

	^ '(self bpReplace: [{1}] with: {2} for: {3})' 
			format: {currentEnclosedSourceCode . self replacementScript . self exampleName printString}