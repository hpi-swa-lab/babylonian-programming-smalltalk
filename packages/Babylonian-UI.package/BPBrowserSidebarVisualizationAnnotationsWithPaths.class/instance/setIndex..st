as yet unclassified
setIndex: aNumber
	
	super setIndex: aNumber.
	(aNumber <= super getAnnotations size and: [aNumber > 1]) ifTrue: [
		annotationIndex := aNumber.
		self changed: #getList].