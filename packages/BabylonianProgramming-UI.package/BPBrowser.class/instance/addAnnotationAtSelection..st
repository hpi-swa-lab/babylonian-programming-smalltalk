private
addAnnotationAtSelection: anAnnotation

	| result |
	result := self 
		addAnnotation: anAnnotation 
		from: self selectedInterval start 
		to: self selectedInterval stop.
	self codeTextMorph setSelection: (self selectedInterval start + 1 to: self selectedInterval stop + 2).
	^ result