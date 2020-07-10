writing
writeStartTagFor: aTextAttribute

	[self nextPutAll: aTextAttribute anchoredMorph startTag]
		on: MessageNotUnderstood do: []