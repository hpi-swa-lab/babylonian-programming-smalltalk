accessing
example: aBPExample

	aBPExample uniqueIdentifier = self example uniqueIdentifier ifTrue: ["there is nothing to change" ^ self].
	
	aBPExample isNilExample ifTrue: [self abandon].
	
	self removeAllButFirstSubmorph.
	self context untrack: example.
	self context track: aBPExample.
	example := aBPExample.
	self addSwimlane.

	