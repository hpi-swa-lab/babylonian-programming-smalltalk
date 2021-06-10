private
addExample: aBPExample
	
	(BPExamples value activeExamples size == 1) ifTrue: [canvasMorph removeAllMorphs].
	context track: aBPExample.
	canvasMorph addMorphBack: (BPSwimlane newFor: aBPExample withContext: context).
	