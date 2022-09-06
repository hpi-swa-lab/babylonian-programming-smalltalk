updating
update: anAspect with: worldExampleTrace

	anAspect = #worldExampleTrace ifTrue: [
		traceInformation trace: ((BPWrappedTrace for: worldExampleTrace) example: self; yourself).]