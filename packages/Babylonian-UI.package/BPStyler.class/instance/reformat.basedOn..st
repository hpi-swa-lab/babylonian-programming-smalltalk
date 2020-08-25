private
reformat: aText basedOn: annotations 
	"The idea of this rewriting is that nested annotations simply set the annotation text attribute on
	their complete enclosed expression, no matter whether it is also annotated or normal.
	We then go from large to small annotations as this guarantees that we go from the enclosing to 
	the enclosed annotations. 
	If we replace source, we first check whether there already was a replacement and correspondingly
	a text anchor character before the annotation. We reuse that text anchor character whenever
	possible, which you can see in this method and in #textForAnnotation:from:at:"
	
	| text startOfTag expressionStart sortedAnnotations replacementStart |
	text := aText.
	
	"Through sorting the annotations, we ensure that we replace the outer ones first as any smaller one might be enclosed in this one."
	sortedAnnotations := annotations sorted: [:a1 :a2 | 
		a1 annotatedExpressionSourceCode size > a2 annotatedExpressionSourceCode size].
	
	sortedAnnotations do: [:each |
		startOfTag := text indexOfSubCollection: each startTagSource.
		expressionStart := text indexOfSubCollection: each enclosedExpressionSource startingAt: startOfTag + each startTagSource size.
		
		(self isAlreadyAnnotatedExpressionAt: startOfTag in: text) 
			ifTrue: [replacementStart := startOfTag - 1]
			ifFalse: [replacementStart := startOfTag].
		text := text 
			copyReplaceFrom: replacementStart 
			to: startOfTag + each annotatedExpressionSourceCode size - 1  
			with: (self textForAnnotation: each from: text at: startOfTag).

		text := self removePotentialEmptyLinesInText: text around: replacementStart].

	^ text
	
	
	