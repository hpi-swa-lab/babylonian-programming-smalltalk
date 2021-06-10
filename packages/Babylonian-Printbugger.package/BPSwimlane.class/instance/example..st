accessing
example: aBPExample
	
	example ifNotNil: [example removeDependent: self].
	example := aBPExample.
	example addDependent: self.