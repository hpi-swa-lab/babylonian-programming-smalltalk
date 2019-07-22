private
removeAnnotations: aCollectionOfAnnotations

	| attributes attributesToBeRemoved newContent |
	attributes := (self codeTextMorph text runs values gather: [:c | c]) asSet.
	attributesToBeRemoved := attributes select: [:attr | (attr isKindOf: TextAnchor) 
			and: [attr anchoredMorph isBPAnnotationMorph] 
			and: [aCollectionOfAnnotations includes: attr anchoredMorph annotation]].

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
	