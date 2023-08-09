record mock
arguments: objects

	self argumentMiniTrees: (objects collect: [:argument | 
		BPMiniTree for: (self ensureTemplateExistsFor: argument)])