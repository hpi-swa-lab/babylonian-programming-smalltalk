minimizing
instVarAccessReadQuick: aContext

	| message potentialGetterMethod |

	message := self instVarMessage: aContext.
	(message selector = #send:super:numArgs: and: [message arguments third = 0])
		ifTrue: [
			(potentialGetterMethod := (self getterReceiverFor: aContext) class lookupSelector: message arguments first) 
				ifNil: [^ false].
			^ self isGetterMethod: potentialGetterMethod].
	^ false