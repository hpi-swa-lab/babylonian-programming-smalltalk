text edit actions
acceptString
	
	^ self onAcceptBlock ifNotNil: [self onAcceptBlock value: self string]