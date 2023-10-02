tool builder
aboutToStyle: aStyler
	
	aStyler 
		classOrMetaClass: nil;
		workspace: ([self example prepareRunState] on: Error do: [:e | nil]).
	^true