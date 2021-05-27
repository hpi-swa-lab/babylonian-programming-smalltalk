mocking
instVarAccessReadQuick: context
	
	| message potentialGetterMethod |
	
	message := context method abstractBytecodeMessageAt: context pc.
	(message selector = #send:super:numArgs: and: [message arguments third = 0])
		ifTrue: [
			(potentialGetterMethod := context receiver class lookupSelector: message arguments first) 
				ifNil: [^ false].
			^ self isGetterMethod: potentialGetterMethod].
	^ false