mocking
instVarAccessReadQuick: context
	
	| message potentialGetterMethod |
	
	message := context method abstractBytecodeMessageAt: context pc.
	(message selector = #send:super:numArgs: and: [message arguments third = 0])
		ifTrue: [
			potentialGetterMethod := context receiver class methodDict
				at: message arguments first
				ifAbsent: [^ false].
			^ self isGetterMethod: potentialGetterMethod].
	^ false