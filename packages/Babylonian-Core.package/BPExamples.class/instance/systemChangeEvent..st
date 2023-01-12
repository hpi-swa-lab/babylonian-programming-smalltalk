change notifications
systemChangeEvent: aModifiedEvent
	
	<bpRelevantMethod>
	self silenceGuard: [
		self updateExamplesOnEvent: aModifiedEvent.
		(aModifiedEvent isReorganized not and: [aModifiedEvent isRecategorized not]) ifTrue: [
			self runActiveExamples]]