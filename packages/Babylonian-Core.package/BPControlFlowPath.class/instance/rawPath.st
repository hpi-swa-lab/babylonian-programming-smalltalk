accessing
rawPath

	^ self path collect: [:context | 
		{context receiverClass . context methodClass . context selector}]