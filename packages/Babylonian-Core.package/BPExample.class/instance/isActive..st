accessing
isActive: aBoolean
	
	aBoolean ~= isActive ifTrue: [
		isActive := aBoolean.
		aBoolean 
			ifTrue: [
				self liveSpecimen do: [:aSpecimen | 
					aSpecimen addDependent: BPExamples value]]
			ifFalse: [
				self liveSpecimen do: [:aSpecimen |
					aSpecimen removeDependent: BPExamples value].
				self ensureTerminatedProcess]].
	^ aBoolean