executing
executeSynchronously
	
	<bpRelevantMethod>
	| state |
	state := self prepareRunState.
	self runSetUpWith: state.
	[ ^ self runWithTimeoutOn: state] 
		ensure: [
			self runTearDownWith: state.
			self changed: #exampleCompleted with: self]