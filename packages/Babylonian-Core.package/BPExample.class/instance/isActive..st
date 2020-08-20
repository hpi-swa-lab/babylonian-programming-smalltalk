accessing
isActive: aBoolean
	
	isActive := aBoolean.
	aBoolean 
		ifFalse: [
			BPActiveExamples value remove: self.
			self ensureTerminatedProcess]
		ifTrue: [BPActiveExamples value add: self]