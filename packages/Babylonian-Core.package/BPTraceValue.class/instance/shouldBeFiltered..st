private
shouldBeFiltered: aStackEntry
	
	^ (self filterableClassesInStack includes: aStackEntry fourth) 
		or: [self filterableMessagesInStack includes: (MethodReference class: aStackEntry fourth selector: aStackEntry third) ]