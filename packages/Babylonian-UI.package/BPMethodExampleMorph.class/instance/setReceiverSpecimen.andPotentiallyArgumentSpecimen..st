recording
setReceiverSpecimen: aSpecimen andPotentiallyArgumentSpecimen: aCollectionOfSpecimen
	
	self example receiverConstructor: aSpecimen.
	
	aCollectionOfSpecimen withIndexDo: [:specimen :index |
		self example argumentScripts at: index put: specimen].
	
	self updateMorphs
	