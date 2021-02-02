examples
addExample
	
	| argumentSpecimen receiverSpecimen example |
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: self contextVariablesInspector object receiver.
	argumentSpecimen := self contextVariablesInspector object arguments
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	"self exampleMorph
		createNewRecordedExampleWithReceiverSpecimen: receiverSpecimen
		andPotentiallyArgumentSpecimen: argumentSpecimen"
	
	"(self selectedClassOrMetaClass
		compiledMethodAt: self selectedMessageName
		ifAbsent: []) ifNotNil:
			[:method | example := method bpNewExampleFrom: BPMethodExample.
				example receiverConstructor: receiverSpecimen.
				argumentSpecimen withIndexDo: [:specimen :index |
				example argumentScripts at: index put: specimen]]"
		
	example := currentCompiledMethod bpNewExampleFrom: BPMethodExample.
		example receiverConstructor: receiverSpecimen.
		argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].
	
	