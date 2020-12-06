*Babylonian-Core-Callgraph-ByteCode
additionalSize: encoder

	<layer: #bpCallgraph>
	| size tracerClassLitIndex blockIdentifierLitIndex invocationTempIndex enterInvocationLitIndex |
	self optimized ifTrue: [
		self assert: (self isRootBlock: encoder) not. "the root block (= method body) should never be optimized"
		^ 0].
	"self isQuick ifTrue: [^ 0]."
	size := 0.
	invocationTempIndex := self invocationTempIndex: encoder.
	
	(self isRootBlock: encoder) 
		ifTrue: [ | invocationCountLitIndex |
			invocationCountLitIndex := self litIndexInvocationCount: encoder.
			size := size + (encoder copy sizePushLiteralVar: invocationCountLitIndex).
			size := size + (encoder copy sizeStoreTemp: invocationTempIndex).
			size := size + (encoder copy sizePushSpecialLiteral: 1). "push constant 1"
			size := size + (encoder copy sizeSendSpecial: 1 numArgs: 1). "1 is the index of #+ in the 24th element of Smalltalk's special object array."
			size := size + (encoder copy sizeStorePopLiteralVar: invocationCountLitIndex)]
		ifFalse: [
			temporaries ifNotEmpty: [
				"
				Special handling is needed when the block defines inner temporary variables. Block temporaries are indexed in the following order:
				1. args (numArgs, arguments size)
				2. temps from outer scope (numCopied, copiedValues size) [both readonly and r/w temps]
				3. temps from inner scope (pushConstant: nil, temporaries size)
				
				Since our newly introduced temporary that holds the invocation counter is conditionally added to the block and falls into the second
				category, we need to add extra code to move the copied temporary into the last temp from the inner scope.
				"
				"size := size + (encoder copy sizePushTemp: arguments size + copiedValues size).
				size := size + (encoder copy sizeStorePopTemp: arguments size + copiedValues size)"
				size := size + (encoder copy sizePushTemp: arguments size + copiedValues size).
				size := size + (encoder copy sizeStorePopTemp: invocationTempIndex).
				size := size + (encoder copy sizePushSpecialLiteral: nil).
				size := size + (encoder copy sizeStorePopTemp: arguments size + copiedValues size)]].
	
	tracerClassLitIndex := self litIndexTracerClass: encoder.
	blockIdentifierLitIndex := self litIndexBlockIdentifier: encoder.
	enterInvocationLitIndex := self litIndexEnterInvocation: encoder.
	
	size := size + (encoder copy sizePushLiteralVar: tracerClassLitIndex).
	size := size + (encoder copy sizePushLiteralVar: blockIdentifierLitIndex).
	size := size + (encoder copy sizePushTemp: invocationTempIndex).
	size := size + (encoder copy sizeSend: enterInvocationLitIndex numArgs: 2).
	size := size + (encoder copy sizePop).
	
	"self returns ifFalse: ["
		"if the block does not return (i.e., no methodReturn, but a blockReturn), then generate the exit code within the BlockNode. Otherwise, we need to generate the exit code within the Return- and VariableNodes"
		"size := size + (self additionalReturnSize: encoder)]."

	^ size