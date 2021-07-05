mocking
insVarNumberFor: c

	^ (c method abstractBytecodeMessageAt: c pc) arguments first + 1