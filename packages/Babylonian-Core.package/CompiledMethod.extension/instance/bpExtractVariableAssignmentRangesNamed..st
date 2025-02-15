*Babylonian-Core
bpExtractVariableAssignmentRangesNamed: aVariableName
	
	^ (self extractAssignmentIntervalsFrom: self parseTree named: aVariableName) flatten
	
	