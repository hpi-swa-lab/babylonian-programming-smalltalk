change notifications
systemChangeEvent: aModifiedEvent
	
	<bpRelevantMethod>
	self silenceGuard: [
		self 
			updateExamplesOnEvent: aModifiedEvent;
			runActiveExamples]