private
addExample: aBPExample

	self examples add: aBPExample.
	aBPExample addDependent: self.
	context track: aBPExample.
	