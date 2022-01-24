tracing
runOn: aState
	
	| block |
	self script ifNotNil: [
		#bpInstrumented withoutLayerDo: [
			[block := Compiler evaluate: '[' , self script , ']']
				on: UndeclaredVariableWarning
				do: [:warning | warning resume: true]].	
			block value].
