accessing
isActive: aBoolean
	
	aBoolean ~= self isActive ifTrue: [
		self setIsActive: aBoolean.
		aBoolean 
			ifTrue: [
				self liveSpecimen do: [:aSpecimen | 
					aSpecimen addDependent: BPExamples value]]
			ifFalse: [
				self liveSpecimen do: [:aSpecimen |
					aSpecimen removeDependent: BPExamples value].
				self ensureTerminatedProcess].
		self changed: #exampleIsActive with: self.].
	^ aBoolean