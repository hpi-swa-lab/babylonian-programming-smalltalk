recording
addExampleWith: receiver and: arguments
	
	| receiverSpecimen argumentSpecimen example |
	
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: receiver.
	argumentSpecimen := arguments
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	example := self method bpNewExampleFrom: BPMethodExample.
	example receiverConstructor: receiverSpecimen.
	argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].
	