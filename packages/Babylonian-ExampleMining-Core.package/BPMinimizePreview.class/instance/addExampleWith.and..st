as yet unclassified
addExampleWith: receiver and: arguments
	
	| receiverSpecimen argumentSpecimen example |
	
	receiverSpecimen := BPActiveSpecimenRegistry default storeCopySpecimen: receiver.
	argumentSpecimen := arguments
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeCopySpecimen: argumentObject].
	
	example := self method bpNewExampleFrom: BPMethodExample.
	example receiverConstructor: receiverSpecimen.
	argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].