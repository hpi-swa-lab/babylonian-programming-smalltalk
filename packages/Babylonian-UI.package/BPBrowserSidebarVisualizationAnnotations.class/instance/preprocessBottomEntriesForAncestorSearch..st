bottom content
preprocessBottomEntriesForAncestorSearch: entries
	
	^ entries collect: [:entry | | parent |
		parent := entry parent.
		parent methodReference = entry methodReference 
			ifTrue: [
				"The probe/assertion's parent is the method/block the probe/assertion is defined in. Let's look for ancestors of that method/block instead of the probe, otherwise, the ancestor without context would always simply be the enclosing method/block, which doesn't really help. The user can easily see in which method they placed the probe/assertion."
				entry parent]
			ifFalse: [entry]]