private
removeAnnotations: aCollectionOfAnnotations
	
	| attributes attributesToBeRemoved newContent |
	attributes := (self codeTextMorph text runs values gather: [:c | c]) asSet.
	attributesToBeRemoved := attributes select: [:attr | (attr isKindOf: TextAnchor) 
			and: [attr anchoredMorph isBPAnnotationMorph] 
			and: [aCollectionOfAnnotations includes: attr anchoredMorph annotation]].

	newContent := self codeTextMorph text copy.
	attributesToBeRemoved do: [:attr | 
		newContent removeAttribute: attr from: 1 to: newContent size]. 
	
	self saveMethodWithExamplesWith: newContent.
	
	