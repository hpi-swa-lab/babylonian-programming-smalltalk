tests-recording
testRecordingScamper
	
	self assert: self recordings isEmpty.
	self
		recordMethod: #authenticate:from:
		inClass: WebClient
		with: [self scamperGoTo401].

	self assert: self recordings isEmpty not.
	
	"self recordings inspect."
	self assert: (self recordings first first isKindOf: WebClient).
	self assert: (self recordings first second first isKindOf: WebRequest).
	self assert: (self recordings first second second isKindOf: WebResponse).
	
	scamper closeBoxHit.