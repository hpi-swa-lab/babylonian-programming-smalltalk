*Babylonian-Core
extractAssignmentIntervalsFrom: aRBNodeWithBody named: aVariableName

	"Private"
	| currentIntervals nestedIntervals |
	"No shadowing"
	((aRBNodeWithBody body temporaries collect: [:aVariableNode | aVariableNode token value])
		includes: aVariableName) ifTrue: [^ #()].
	
	nestedIntervals := aRBNodeWithBody body statements select: [:aRBNode | aRBNode isBlock]
		thenCollect: [:aBlockNode | self extractAssignmentIntervalsFrom: aBlockNode named: aVariableName].
	currentIntervals := aRBNodeWithBody body statements select: [:aRBNode | 
			aRBNode isAssignment and: [aRBNode variable token value = aVariableName]] 
		thenCollect: [:anAssignmentNode | 
			anAssignmentNode startWithoutParentheses@anAssignmentNode stopWithoutParentheses].
	
	^ currentIntervals, nestedIntervals 

	