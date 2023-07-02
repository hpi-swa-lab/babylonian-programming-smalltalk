private
mementoFor: aContext
	
	^ {aContext identityHash . aContext receiver identityHash . aContext selector. aContext methodClass . aContext receiver class}