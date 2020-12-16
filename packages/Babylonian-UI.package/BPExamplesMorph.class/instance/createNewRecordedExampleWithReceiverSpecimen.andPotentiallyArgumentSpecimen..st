as yet unclassified
createNewRecordedExampleWithReceiverSpecimen: aSpecimen andPotentiallyArgumentSpecimen: aCollectionOfSpecimen
	
	| example |
	example := self createAndAddNewExampleFrom: BPMethodExample.
	example receiverConstructor: aSpecimen.
	aCollectionOfSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen].