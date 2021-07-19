helpers
getMockedObjectsForFirstRecording
	
	| forest |
	
	forest := self getMockForestForFirstRecording.
	
	^ forest createMinimalObjects