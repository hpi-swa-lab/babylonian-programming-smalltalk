initialize-release
removeFromMethod: aCompiledMethod

	"Intended to delete annotations from outside a browser"
	 aCompiledMethod bpAnnotations 
		detect: [:anAnnotation | anAnnotation id = self id ]
		ifFound: [:theAnnotationToRemove | | text startOfTag expressionStart replacementStart replacementEnd |
			text := aCompiledMethod getSource.
			startOfTag := text indexOfSubCollection: theAnnotationToRemove startTagSource.
			expressionStart := text indexOfSubCollection: theAnnotationToRemove enclosedExpressionSource 
								startingAt: startOfTag + theAnnotationToRemove startTagSource size.
		
			replacementStart := startOfTag - 1.
			replacementEnd := startOfTag + theAnnotationToRemove annotatedExpressionSourceCode size - 1.
			text := text copyReplaceFrom: replacementStart to: replacementEnd with: ''.
			text := BPStyler removePotentialEmptyLinesInText: text around: replacementStart.

			aCompiledMethod methodClass compile: text.]
		ifNone: ["do nothing"]