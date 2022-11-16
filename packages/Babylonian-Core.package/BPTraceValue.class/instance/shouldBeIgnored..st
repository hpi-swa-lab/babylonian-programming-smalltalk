private
shouldBeIgnored: aStackEntry
	
	^ (self ignoredClassesInStack includes: aStackEntry methodClass) 
		or: [self ignoredMessagesInStack includes: aStackEntry methodReference]