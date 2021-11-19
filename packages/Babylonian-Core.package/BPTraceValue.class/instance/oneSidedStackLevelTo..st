private
oneSidedStackLevelTo: anotherTraceValue

	"0: anotherTraceValue stack does not contain self containedMethodReference.
	+x: stack level in which anotherTraceValue stack contains  self containedMethodReference."
	
	^ self oneSidedStackLevelToFilteredStack: anotherTraceValue filteredStack