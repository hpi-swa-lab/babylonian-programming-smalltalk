accessing
contents: input notifying: aController

	| result | 
	result := super contents: input notifying: aController.
	
	sidebar changed: #getExampleListLabels.
	
	^ result