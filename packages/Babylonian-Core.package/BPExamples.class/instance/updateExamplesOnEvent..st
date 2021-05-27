change notifications
updateExamplesOnEvent: aChangeEvent
	
	aChangeEvent itemKind = SystemChangeNotifier methodKind ifTrue: [
		"Ordering matters here. We first force an update which in turn replaces
		all new bpExamples with their unique version in this collection and updates the
		method of all unique examples. Only after that is done, we can safely remove any 
		unique examples as all examples have their current method."
		(aChangeEvent isAdded or: [aChangeEvent isModified]) ifTrue: [
			aChangeEvent item bpExamples. "forces an update"].
		
		(self examples select: [:example | example method isBPInstalled not]) do: [:example |
			self remove: example].]. 