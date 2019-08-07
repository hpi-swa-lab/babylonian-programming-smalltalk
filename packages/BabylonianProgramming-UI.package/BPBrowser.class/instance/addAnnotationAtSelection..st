private
addAnnotationAtSelection: anAnnotation

	| result |
	result := self 
		addAnnotation: anAnnotation 
		from: self selectedInterval start 
		to: self selectedInterval stop.
	self codeTextMorph setSelection: (self selectedInterval start to: self selectedInterval stop + 1).
	^ result