2 - test edge cases
testEdgeCases
	
	{
		"number of temporaries + arguments just shy of 16."
		BouncingAtomsMorph >> #collisionPairs . KedamaMorph >> #acceptForm: . KedamaMorph >> #acceptForm: . 
		"block that both blockReturns and returnsMethod"
		WebClient >> #serverPort . StringMorph >> #balloonTextForLexiconString.
		"another edge case"
		LedCharacterMorph >> #drawOn: 
	} do: [:originalMethod | | method |
		"don't directly instrument the methods present in the system."
		method := BPByteCodeRewriter instrumentString: originalMethod getSource.
		BPByteCodeRewriter enableTracingForCompiledMethod: method.
		BPByteCodeRewriter disableTracingForCompiledMethod: method].
	