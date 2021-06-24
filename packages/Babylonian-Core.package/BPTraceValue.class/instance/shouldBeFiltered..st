private
shouldBeFiltered: aStackEntry
	
	^ (self filterableClassesInStack includes: aStackEntry third) 
		or: [self filterableMessagesInStack includes: (MethodReference class: aStackEntry fourth selector: aStackEntry third) ]