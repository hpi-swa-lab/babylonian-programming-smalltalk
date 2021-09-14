private
oneSidedStackLevelTo: anotherTraceValue
	
	"0: anotherTraceValue stack does not contain self containedMethodReference.
	+x: stack level in which anotherTraceValue stack contains  self containedMethodReference.
	We traverse by reverse to cover recursive calls."
	
	|foundElementIndex|
	foundElementIndex := (self filteredStackFor: anotherTraceValue stack) findLast: [:aStackEntry | 
			(aStackEntry third == self stack first third and: [aStackEntry fourth == self stack first fourth])].
	
	^ foundElementIndex ~= 0 
		ifTrue: [foundElementIndex-1]
		ifFalse: [0]