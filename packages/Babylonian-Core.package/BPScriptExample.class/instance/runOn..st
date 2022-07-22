tracing
runOn: aState
	
	| block |
	self script ifNotNil: [
		#bpInstrumented withoutLayerDo: [
			block := Compiler evaluate: '[' , self script , ']' notifying: aState].	
		^ block value].