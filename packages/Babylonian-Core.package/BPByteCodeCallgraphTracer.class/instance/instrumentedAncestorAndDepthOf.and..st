private
instrumentedAncestorAndDepthOf: aContext and: newSenderContext
	
	"
	I calculate two things:
	1. The difference of the depths of the stacks of aContext and anotherContext, ignoring all non-instrumented stack frames (contexts).
	    The following code would have the same effect:
		depthOld := self instrumentedDepthOf: aContext below: nil.
		depthNew := self instrumentedDepthOf: anotherContext below: nil.
		depth := depthNew - depthOld.
	    However, that code needs to traverse the entire stacks of both aContext and anotherContext.
   	    In this method, we traverse both stacks iteratively, so that we can return earlier 
	    and don't necessarily need to traverse both stacks in full.
	
	2. 
	"

	| oldStack newStack numSharedStackFrames diff |
	oldStack := self stackWithActiveTracingOf: aContext.
	newStack := self stackWithActiveTracingOf: newSenderContext.
	
	"remove the stack frame that called swapSender:, since our calculation only cares about the stack after it returns"
	"(BPByteCodeRewriter hasActiveTracing: aContext method) ifTrue: [oldStack := oldStack allButLast]."
	
	numSharedStackFrames := self numEqualElementsOf: oldStack and: newStack.
	
	diff := newStack size - oldStack size.
	diff <= 0
		ifTrue: ["jump left"
			self halt.
			self flag: #todo. "This should probably also return context jump helpers"
			^ {nil "unused" . diff}]
		ifFalse: ["jump right"
			^ {
				newStack collect: [:each | self jumpHelperFor: each] from: numSharedStackFrames + 1 to: newStack size  . 
				diff}]