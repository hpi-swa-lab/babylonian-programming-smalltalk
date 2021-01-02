private
instrumentedAncestorAndDepthOf: aContext and: anotherContext
	
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

	| a b seenA seenB |
	seenA := OrderedCollection new.
	seenB := OrderedCollection new.
	
	a := aContext.
	b := anotherContext.
	
	[| idx depth |
		[a notNil and: [(BPByteCodeRewriter hasActiveTracing: a method) not]] whileTrue: [a := a sender].
		[b notNil and: [(BPByteCodeRewriter hasActiveTracing: b method) not]] whileTrue: [b := b sender].

		(a isNil and: [b isNil]) ifTrue: [
			depth := seenB size - seenA size.
			^ depth <= 0
				ifTrue: [{Float negativeInfinity "unused" . depth}]
				ifFalse: [{seenB size . depth}]]. self flag: #todo. "Verify that the first return value is correct."

		a ifNotNil: [seenA addLast: a].
		b ifNotNil: [seenB addLast: b].	

		a ifNotNil: [(idx := seenB indexOf: a) > 0 ifTrue: ["jump left" 
			depth := idx - seenA size.
			self assert: depth <= 0.
			^ {Float negativeInfinity "unused" . depth}]].		
		b ifNotNil: [(idx := seenA indexOf: b) > 0 ifTrue: ["jump right"
			depth := seenB size - idx.
			self assert: depth > 0.
			^ {idx "- 1" . depth}]]. self flag: #todo. "Verify that the first return value is correct."
		
		a ifNotNil: [a := a sender].
		b ifNotNil: [b := b sender].
	] repeat.