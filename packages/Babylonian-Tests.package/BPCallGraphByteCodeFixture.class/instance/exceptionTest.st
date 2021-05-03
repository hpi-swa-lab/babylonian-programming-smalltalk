1 - exception test
exceptionTest
	
	[
		self a.
	] on: Error do: [self c].
	self d.