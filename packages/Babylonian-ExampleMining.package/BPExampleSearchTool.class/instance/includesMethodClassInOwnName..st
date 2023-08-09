searching
includesMethodClassInOwnName: aClass
	
	^ (aClass name asString includesSubstring: self method methodClass name asString)