actions
openInProbeLogClicked

	self containingBrowser ifNil: [^ self "do nothing, early return"].
	
	self containingBrowser sidePaneContent = BPBrowser probeLogSymbol 
		ifTrue: [self openExampleInDockedProbeLog]
		ifFalse: [self openExampleInProbeLog].