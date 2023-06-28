private
openExampleInProbeLog

	| openProbeLogs |
	openProbeLogs := World allMorphs select: [:aMorph | aMorph isKindOf: BPProbeLog].
	openProbeLogs size == 1 
		ifTrue: [openProbeLogs first addNewColumnFrontFor: self example]
		ifFalse: [BPProbeLog openFor: {self example}]