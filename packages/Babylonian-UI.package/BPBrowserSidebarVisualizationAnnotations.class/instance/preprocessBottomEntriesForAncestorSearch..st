bottom content
preprocessBottomEntriesForAncestorSearch: entries
	
	self flag: #todo. "replace super method with this method?"
	^ entries collect: #selfOrParentMethodBlockOfBPProbeOrAssertion