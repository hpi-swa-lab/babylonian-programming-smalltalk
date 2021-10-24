private
compiling: sourceCode shouldRaise: exceptionClass andSelect: selectionMatch testing: tests
	
	"See CompilerException"

	| referenceTest |
	referenceTest := [] -> [].
	(tests copyWithFirst: referenceTest) associationsDo: [:test |
		self
			should: [self compile: sourceCode.]
			raise: exceptionClass
			thenDo: [:exception |
				previousSelection := self selectionInterval.
				(self handlerBlockFor: test key) cull: exception].
		self codePaneTextMorph accept.
		(self testBlockFor: test value) value].