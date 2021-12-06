accessing
assertions

	^ self currentTrace
		ifNil: [#()]
		ifNotNil: [self currentTrace assertions]