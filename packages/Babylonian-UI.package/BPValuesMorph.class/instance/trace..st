accessing
trace: aTrace

	trace := aTrace.
	values := self basicValuesFor: aTrace.
	
	values ifEmpty: [^ self].
	values first traceHasFailedBefore ifTrue: [^ self].
	values := self probeMorph filterValues: values throughSliderForTrace: trace.