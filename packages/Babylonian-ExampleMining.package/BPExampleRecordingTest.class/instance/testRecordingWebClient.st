tests-recording
testRecordingWebClient

	self assert: self recordings isEmpty.
	self
		recordMethod: #authenticate:from:
		inClass: WebClient
		with: [WebClientServerTest run: #testAuthException].

	self assert: self recordings isEmpty not.

	self assert: (self recordings first first isKindOf: WebClient).
	self assert: (self recordings first second first isKindOf: WebRequest).
	self assert: (self recordings first second second isKindOf: WebResponse)