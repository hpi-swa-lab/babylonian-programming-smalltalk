private
oneSidedStackLevelTo: anotherTraceValue
	
	"0: anotherTraceValue stack does not contain self containedMethodReference.
	+x: stack level in which anotherTraceValue stack contains  self containedMethodReference."
	
	anotherTraceValue stack 
		detect: [:aStackEntry | 
			aStackEntry third == self containedMethodReference selector 
			and: [aStackEntry fourth == self containedMethodReference actualClass]]
		ifFound: [:aStackEntryOfSelf |^ ( anotherTraceValue stack indexOf: aStackEntryOfSelf) // 8]
		ifNone: [^ 0]