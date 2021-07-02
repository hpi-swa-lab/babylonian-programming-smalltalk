accessing
relativeStackLevelTo: anotherTraceValue
	
	"-x: self stack calls anotherTraceValue by x calls.
	0: self strack and anotherTraceValue are called independently in the same method 
		OR they are not related at all.
	+x: anotherTraceValue stacks calls self by x calls."
	
	"First check trivial case: If two stack depths are the same they are either called in the same
	method or totally unrelated. If the two stacks are both full, the trivial check fails."
	(self isStackFull not and: [self stack size == anotherTraceValue stack size]) ifTrue: [^ 0].
	
	"If both stacks are full, the direction can also not be as easily concluded. Return the non zero one unless
	both directions result in a depth of zero."
	(self isStackFull and: [anotherTraceValue isStackFull]) ifTrue: [ 
		{self oneSidedStackLevelTo: anotherTraceValue. (anotherTraceValue oneSidedStackLevelTo: self) negated}
			detect: [:aStackDepth | aStackDepth ~= 0]
				ifFound: [:theStackDepth | ^ theStackDepth] 
				ifNone: [^ 0]].
	
	"else self can only be called if the stack size of other is bigger & vice visa."
	(self stack size < anotherTraceValue stack size)
		ifTrue: [^ self oneSidedStackLevelTo: anotherTraceValue]
		ifFalse: [^ (anotherTraceValue oneSidedStackLevelTo: self) negated].
	
	
	
	