private
removeAnnotationsSatisfying: aSelectBlock

	| annotationAttributes attributes attributesToBeRemoved newContent |
	attributes := self codeTextMorph text attributesAt: self codeTextMorph selectionInterval start.
	annotationAttributes := attributes select: [:attr | (attr isKindOf: TextAnchor) 
			and: [attr anchoredMorph isBPAnnotationMorph] 
			and: [aSelectBlock value: attr anchoredMorph annotation]].
	attributesToBeRemoved := annotationAttributes select: [:attr | self codeTextMorph selectionInterval allSatisfy: [:index |
		(self codeTextMorph text attributesAt: index) includes: attr]].

	newContent := self codeTextMorph text.
	attributesToBeRemoved do: [:attr | | interval |
		interval := attr intervalIn: self codeTextMorph text.
		newContent := newContent
			copyReplaceFrom: interval start
			to: interval stop
			with: (newContent copyFrom: interval start + 1 to: interval stop).
		newContent removeAttribute: attr]. 
	
	self codeTextMorph setText: newContent.
	self codeTextMorph hasUnacceptedEdits: true.
	self codeTextMorph accept.
	