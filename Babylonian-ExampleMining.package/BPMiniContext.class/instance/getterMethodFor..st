minimizing
getterMethodFor: aContext

	^ (self getterReceiverFor: aContext) class lookupSelector: (self instVarMessage: aContext) arguments first