private
mementoFor: aContext
	
	^ {aContext identityHash . aContext receiver identityHash . aContext selector}