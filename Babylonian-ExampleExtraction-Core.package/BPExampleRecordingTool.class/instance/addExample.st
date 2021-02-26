recording
addExample
	
	| argumentSpecimen receiverSpecimen example |
	     
	self selectedRecording ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].
	
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: self selectedRecording first.
	argumentSpecimen := self selectedRecording second
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	"self exampleMorph
		createNewRecordedExampleWithReceiverSpecimen: receiverSpecimen
		andPotentiallyArgumentSpecimen: argumentSpecimen"
		
	example := self method bpNewExampleFrom: BPMethodExample.
	example receiverConstructor: receiverSpecimen.
	argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].
	