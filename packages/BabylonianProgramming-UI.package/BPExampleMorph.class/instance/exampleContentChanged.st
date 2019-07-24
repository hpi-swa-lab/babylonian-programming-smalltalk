actions
exampleContentChanged

	hasSeenChange ifFalse: [
			hasSeenChange := true.
			(self future: self updateDelayInMs) doDelayedUpdate]
	