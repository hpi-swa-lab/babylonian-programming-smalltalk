*Babylonian-Core-Callgraph-ByteCode
sizeCodeForEvaluatedValue: encoder

	<layer: #bpCallgraph>

	^ ("(self isRootBlock: encoder) ifTrue: ["self additionalSize: encoder"] ifFalse: [0]")
		+ (self sizeCodeExceptLast: encoder)
		+ (statements last sizeCodeForBlockValue: encoder)