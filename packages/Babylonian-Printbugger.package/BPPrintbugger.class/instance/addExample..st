private
addExample: aBPExample

	(BPExamples value activeExamples size = 1) ifTrue: [self removeAllMorphs].
	context track: aBPExample.
	self addMorphBack: (BPSwimlane newFor: aBPExample withContext: context).
	