running
setUp
	
	browser := BPBrowser fullOnClass: self class.
	stylePreference := Preferences confirmFirstUseOfStyle.
	Preferences setPreference: #confirmFirstUseOfStyle toValue: false.
	self compileMethodHeaderAndSetBrowserToIt.