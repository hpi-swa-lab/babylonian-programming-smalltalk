accessing
arguments: objects
	
	self argumentMockTrees: (objects collect: [:argument | BPMockTree for: (self ensureMockExistsFor: argument) in: self]).