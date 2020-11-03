private
instrumentedAncestorAndDepthOf: aContext and: anotherContext
	

	| a b seenA seenB |
	seenA := OrderedCollection new.
	seenB := OrderedCollection new.
	
	a := aContext.
	b := anotherContext.

	[| idx depth |
		[[a notNil and: [(BPByteCodeRewriter hasActiveTracing: a method) not]] whileTrue: [a := a sender]] value.
		[[b notNil and: [(BPByteCodeRewriter hasActiveTracing: b method) not]] whileTrue: [b := b sender]] value.

		(a isNil and: [b isNil]) ifTrue: [self error: 'context have no common ancestor - this should never happen.'].

		a ifNotNil: [seenA addLast: a].
		b ifNotNil: [seenB addLast: b].	

		a ifNotNil: [(idx := seenB indexOf: a) > 0 ifTrue: ["jump left" 
			depth := idx - seenA size.
			self assert: depth <= 0.
			^ {Float negativeInfinity "unused" . depth}]].		
		b ifNotNil: [(idx := seenA indexOf: b) > 0 ifTrue: ["jump right"
			depth := seenB size - idx.
			self assert: depth > 0.
			^ {idx - 1 . depth}]].
		
		a ifNotNil: [a := a sender].
		b ifNotNil: [b := b sender].
	] repeat.