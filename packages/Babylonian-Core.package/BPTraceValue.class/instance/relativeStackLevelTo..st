accessing
relativeStackLevelTo: anotherTraceValue
	
	"-x: self stack calls anotherTraceValue by x calls.
	0: self strack and anotherTraceValue are called independently in the same method 
		OR they are not related at all.
	+x: anotherTraceValue stacks calls self by x calls."
	
	"First check trivial case: If two stack depths are the same they are either called in the same
	method or totally unrelated."
	(self stack size == anotherTraceValue stack size) ifTrue: [^ 0].
		
	"self can only be called if the stack size of other is bigger & vice visa."
	(self stack size < anotherTraceValue stack size)
		ifTrue: [^ self oneSidedStackLevelTo: anotherTraceValue]
		ifFalse: [^ (anotherTraceValue oneSidedStackLevelTo: self) negated].
	
	
	
	