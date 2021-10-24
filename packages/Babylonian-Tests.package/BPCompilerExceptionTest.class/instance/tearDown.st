running
tearDown
	
	self codePaneTextMorph accept.
	super tearDown.
	browser containingWindow abandon.
	Preferences setPreference: #confirmFirstUseOfStyle toValue: stylePreference.