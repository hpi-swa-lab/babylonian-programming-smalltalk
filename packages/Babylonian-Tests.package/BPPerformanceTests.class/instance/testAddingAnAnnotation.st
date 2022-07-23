tests
testAddingAnAnnotation

	| resultTimes |
	resultTimes := Set new.
	10 timesRepeat: [
		[self setUp.
		resultTimes add: [browser addAnnotation: BPProbe new in: (90 to: 92)] timeToRun.]
			ensure: [self tearDown]].
	^ resultTimes average asFloat rounded asString , ' ms'