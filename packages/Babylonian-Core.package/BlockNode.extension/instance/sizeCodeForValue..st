*Babylonian-Core-Callgraph-ByteCode
sizeCodeForValue: encoder
	<layer: #bpCallgraph>
	"Compute the size for the creation of the block and its code."
	copiedValues := self computeCopiedValues: encoder rootNode.
	self ensureClosureCreationNode: encoder.
	encoder supportsFullBlocks ifTrue:
		[^(copiedValues inject: 0 into: [:sum :node| sum + (node sizeCodeForValue: encoder)])
		 + (encoder
				sizePushFullClosure:
					(closureCreationNode
						key: (self createBlockLiteral: encoder);
						reserve: encoder;
						index)
				numCopied: copiedValues size)].
	"Remember size of body for emit time so we know the size of the jump around it."
	size := self sizeCodeForEvaluatedClosureValue: encoder.
	^(copiedValues inject: 0 into: [:sum :node| sum + (node sizeCodeForValue: encoder)])
	  + (encoder sizePushClosureCopyNumCopiedValues: copiedValues size numArgs: arguments size jumpSize: size)
	  + size
	  "<custom code>"+ (self additionalSizeBeforeBlock: encoder)"</custom code>"