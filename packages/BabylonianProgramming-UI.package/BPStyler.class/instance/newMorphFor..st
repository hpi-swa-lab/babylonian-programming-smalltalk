private
newMorphFor: aTag

	aTag = 'bpProbe' ifTrue: [
		^ BPProbeMorph new 
			probeId: self nextProbeId; 
			methodReference: selectedMethod;
			yourself].
	aTag = 'bpReplace' ifTrue: [^ BPReplacementMorph new].
	aTag = 'bpAssert' ifTrue: [^ BPAssertionMorph new].
	