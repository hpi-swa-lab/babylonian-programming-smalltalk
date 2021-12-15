running
runCase

	^ Preferences 
		setPreference: #confirmFirstUseOfStyle
		toValue: false
		during: [super runCase]