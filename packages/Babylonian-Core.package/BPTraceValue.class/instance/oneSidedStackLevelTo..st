private
oneSidedStackLevelTo: anotherTraceValue
	
	"0: anotherTraceValue stack does not contain self containedMethodReference.
	+x: stack level in which anotherTraceValue stack contains  self containedMethodReference."
	
	(anotherTraceValue stack reject: [:aStackEntry | self shouldBeFiltered: aStackEntry ])
		withIndexDo: [:aStackEntry :anIndex | 
			(aStackEntry third == self stack first third and: [aStackEntry fourth == self stack first fourth])
				ifTrue: [^anIndex-1]].
		^ 0