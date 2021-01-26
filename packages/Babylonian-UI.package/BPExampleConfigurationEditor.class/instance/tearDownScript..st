model accessing
tearDownScript: aText
	
	self example tearDownScript: aText asString.
	self changed: #tearDownScript.
	self informRequestor.