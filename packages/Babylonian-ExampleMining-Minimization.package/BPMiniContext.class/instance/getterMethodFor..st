minimizing
getterMethodFor: c

	^ (c at: c stackPtr) class lookupSelector: (c method abstractBytecodeMessageAt: c pc) arguments first