private
extractIntervals

	^ extractIntervals ifNil: [extractIntervals := BPSmalltalkGrammar semanticAction: BPExtractAnnotations new]