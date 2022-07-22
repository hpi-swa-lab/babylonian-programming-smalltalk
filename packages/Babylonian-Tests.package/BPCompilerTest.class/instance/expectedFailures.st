failures
expectedFailures

	^ #(testRewritingErrorOnIncompleteExpressionForAssertion 
	testRewritingErrorOnIncompleteExpressionForReplacement
	testRewritingErrorOnIncompleteExpressionProbe
	testFromFormattedSourceCodeToAnnotatedSourceCode) , 
		"should fail" #(testRewritingBinaryMessageChainProbe) ,
		#(testCompileSilentlyAddsAnnotationsProperly)