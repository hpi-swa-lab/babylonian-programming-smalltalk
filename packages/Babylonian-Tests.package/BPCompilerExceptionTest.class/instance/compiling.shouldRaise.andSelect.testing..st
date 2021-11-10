private
compiling: sourceCode shouldRaise: exceptionClass andSelect: selectionMatch testing: tests

	"Test behavior of the compiler for the given sourceCode and expected an exception of kind exceptionClass. Other arguments:
		* selectionMatch is used to check the selection of the source text that is active when an exception has occured. Can be a text, an interval, or a predicate block. See #assertSelection:.
		* tests is an array of associations representing pairs of reactions (key) to the exception and the assertion (value) that should be run afterward.
			* The key can be a boolean for answering yes/no dialogs, a string for selecting a named option from a dialog window, or a one-arg block to handle the occuring exception in a different way (see #handlerBlockFor:).
			* The value can be either a string that will be compared to the final compiler source code or a custom assertion block that will be evaluated after the compilation has terminated (see #testBlockFor:)."

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