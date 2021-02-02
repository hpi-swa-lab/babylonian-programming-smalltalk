debugging
debugProcess: aProcess context: aContext label: aString contents: contents fullView: aBool
	
	(aProcess isTerminated and: [aString beginsWith: 'Debug it']) ifTrue: [
		^ Project uiManager inform: 'Nothing to debug. Process has terminated.\Expression optimized.' withCRs].

	^ BPDebugger
		openOn: aProcess
		context: aContext
		label: aString
		contents: contents
		fullView: aBool