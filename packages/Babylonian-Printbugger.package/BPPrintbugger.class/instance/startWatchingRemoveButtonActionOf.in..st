private
startWatchingRemoveButtonActionOf: aBPSwimlane in: aColumnMorph

	"Deleting the example via morph must also remove it from our 
		- own state
		- and our submorphs 
	when we are displaying it in a lane."
	aBPSwimlane  
		when: #swimlaneCloses
		send: #displaySwimlaneIn:
		to: self 
		withArguments: {aColumnMorph}.
		