private
removeExample: aBPExample

	self examples remove: aBPExample ifAbsent: ["don't care"].
	aBPExample removeDependent: self.
	context untrack: aBPExample.
	