private
removeSelectedAnnotationsSatisfying: aSelectBlock

	| attributes attributesToBeRemoved |
	attributes := self codeTextMorph text attributesAt: self codeTextMorph selectionInterval start.
	attributesToBeRemoved := attributes select: [:attr | 
		self codeTextMorph selectionInterval allSatisfy: [:index |
			(self codeTextMorph text attributesAt: index) includes: attr]].
	attributesToBeRemoved := attributesToBeRemoved asSet select: [:attr | 
		(attr isKindOf: TextAnchor) 
			and: [attr anchoredMorph isBPAnnotationMorph] 
			and: [aSelectBlock value: attr anchoredMorph annotation]].
	
	self removeAnnotations: (attributesToBeRemoved collect: [:attr |
			attr anchoredMorph annotation]).
