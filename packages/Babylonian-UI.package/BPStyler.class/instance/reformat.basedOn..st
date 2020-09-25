private
reformat: aText basedOn: annotations
	

	"The idea of this rewriting is that nested annotations simply set the annotation text attribute on
	their complete enclosed expression, no matter whether it is also annotated or normal.
	We then go from large to small annotations as this guarantees that we go from the enclosing to 
	the enclosed annotations. 
	If we replace source, we first check whether there already was a replacement and correspondingly
	a text anchor character before the annotation. We reuse that text anchor character whenever
	possible, which you can see in this method and in #textForAnnotation:from:at:"
	
	| text startOfTag expressionStart sortedAnnotations replacementStart intervalMap replacementEnd |
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
		replacementEnd := startOfTag + each annotatedExpressionSourceCode size - 1.
		text := text
			copyReplaceFrom: replacementStart 
			to: replacementEnd
			with: (self textForAnnotation: each from: text at: startOfTag).

		text := self removePotentialEmptyLinesInText: text around: replacementStart].

	"Until the whole infrastructure is reworked to be completely AST based, the intervalMap is used
	to hook up probes to any sliders in the method. It should be removed on fixing the infrastructure"
	intervalMap := text textAnchorIntervals.
	(intervalMap keys select: [:k | k anchoredMorph isSlider]) do: [:sliderAnchor | | sliderInterval affectedProbeMorphs |
		sliderInterval := intervalMap at: sliderAnchor.
		affectedProbeMorphs := intervalMap associations 
			select: [:attributeToInterval | 
				(sliderInterval includesAllOf: attributeToInterval value) and: [
					attributeToInterval key anchoredMorph isProbe]]
			thenCollect: [:annotationToInterval | annotationToInterval key anchoredMorph].
		affectedProbeMorphs do: [:probeMorph | probeMorph listenToSlider: sliderAnchor anchoredMorph]].

	^ text	
	