text edit actions
acceptContent: aText
	
	^ self onAcceptBlock ifNotNil: [self onAcceptBlock value: aText]