as yet unclassified
addExample
	
	| argumentSpecimen receiverSpecimen example |
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: self selectedRecording first.
	argumentSpecimen := self selectedRecording second
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	"self exampleMorph
		createNewRecordedExampleWithReceiverSpecimen: receiverSpecimen
		andPotentiallyArgumentSpecimen: argumentSpecimen"
		
	example := self compiledMethod bpNewExampleFrom: BPMethodExample.
	example receiverConstructor: receiverSpecimen.
	argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].
	