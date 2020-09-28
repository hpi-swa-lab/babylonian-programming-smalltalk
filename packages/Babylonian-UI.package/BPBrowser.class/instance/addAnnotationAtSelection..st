private
addAnnotationAtSelection: anAnnotation
	
	| result |
	self haltOnce.
	self hasUnacceptedEdits ifTrue: [
		self inform: 'To add annotations,
save method first.'.
		^ false].
	
	result := self 
		addAnnotation: anAnnotation 
		in: (self selectedInterval start to: self selectedInterval stop).
	self codeTextMorph setSelection: (self selectedInterval start + 1 to: self selectedInterval stop + 2).
	^ result