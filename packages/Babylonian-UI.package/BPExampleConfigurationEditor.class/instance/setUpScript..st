model accessing
setUpScript: aText
	
	self example setUpScript: aText asString.
	self changed: #setUpScript.
	self informRequestor.