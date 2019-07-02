private
extractIntervals

	^ extractIntervals ifNil: [extractIntervals := BPExtractAnnotations new]