private
startWatchingRemoveButtonActionOf: aBPSwimlane

	aBPSwimlane  
		when: #swimlaneCloses
		send: #cleanUpAfterRemovedExample
		to: self.
		