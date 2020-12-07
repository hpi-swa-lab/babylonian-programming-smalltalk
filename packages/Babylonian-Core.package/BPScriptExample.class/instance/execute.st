tracing
execute
	
	| block |
	self script ifNotNil: [
		#bpInstrumented withoutLayerDo: [
			block := Compiler evaluate: '[' , self script , ']'].	
			block value].