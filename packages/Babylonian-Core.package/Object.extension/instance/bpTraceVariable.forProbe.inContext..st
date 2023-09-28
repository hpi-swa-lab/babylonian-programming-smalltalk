*Babylonian-Core
bpTraceVariable: aVariableName forProbe: probeId inContext: aContext
	
	<bpRelevantMethod>
	self halt.
	^ aVariableName value, ' '
	"^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			through: [:r | r]
			forProbe: probeId 
			inContext: aContext]"