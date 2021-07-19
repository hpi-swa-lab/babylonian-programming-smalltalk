accessing
arguments: objects
	
	self argumentMockTrees: (objects collect: [:argument | BPMiniTree for: (self ensureMockExistsFor: argument) in: self]).