private
selectedContextFor: anExample
	

	^ self selectedContextPerExample at: anExample ifAbsent: [nil]