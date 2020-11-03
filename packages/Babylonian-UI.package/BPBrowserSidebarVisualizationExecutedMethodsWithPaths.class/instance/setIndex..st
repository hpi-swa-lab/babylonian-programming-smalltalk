as yet unclassified
setIndex: aNumber
	
	super setIndex: aNumber.
	
	aNumber <= super getMethods size ifTrue: [
		methodIndex := aNumber.
		self changed: #getList].