private
addDependentTo: aBPExample
	
	aBPExample addDependent: self.
	aBPExample traceInformation addDependent: self.
	