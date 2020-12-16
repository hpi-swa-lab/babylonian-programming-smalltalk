as yet unclassified
addExample
	
	| argumentSpecimen receiverSpecimen |
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: self selectedRecording receiverObject.
	argumentSpecimen := self selectedRecording argumentObjects
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	self exampleMorph
		createNewRecordedExampleWithReceiverSpecimen: receiverSpecimen
		andPotentiallyArgumentSpecimen: argumentSpecimen