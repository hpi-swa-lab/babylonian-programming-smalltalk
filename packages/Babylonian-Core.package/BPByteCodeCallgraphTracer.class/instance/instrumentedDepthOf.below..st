private
instrumentedDepthOf: aContext below: ancestor
	
	"Based on Context >> #depthBelow:"

	| child depth |
	child := aContext.
	depth := 0.
	[child == ancestor or: [child == nil]] whileFalse: [
		(BPByteCodeRewriter hasActiveTracing: child method) ifTrue: [depth := depth + 1].
		child := child sender].
	^depth