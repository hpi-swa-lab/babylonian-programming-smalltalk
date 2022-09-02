change notifications
doSilently: aBlock
	"Do not run update example lists or run any examples due to events happening during aBlock."
	
	self silenceLevel: self silenceLevel + 1.
	^ aBlock ensure: [self silenceLevel: self silenceLevel - 1]