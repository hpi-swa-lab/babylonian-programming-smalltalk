private
scaleIcon: anIcon by: scale

	| form |
	form := anIcon asMorph image form.
	form := form magnify: form boundingBox by: scale smoothing: 2.
	
	^ form