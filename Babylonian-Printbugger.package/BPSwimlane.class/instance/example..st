accessing
example: aBPExample
	
	example ifNotNil: [example traceInformation removeDependent: self.].
	example := aBPExample.
	example traceInformation addDependent: self.