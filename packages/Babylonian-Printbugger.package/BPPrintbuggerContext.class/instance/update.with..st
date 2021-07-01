updating
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		"When a new trace is set, we do not know which values were added/removed so update all trace values. Only send an update notification if tracked methods changed."
		anObject first ifNotNil: [
			keysCountCache := methodToCount size.
			anObject second ifNotNil: [self untrackAllTraceValues: anObject second traceValues].
			self trackAllTraceValues: anObject first traceValues.
			(keysCountCache ~~ methodToCount size) ifTrue: [self changed: #updatedContext with: anObject first example]]].