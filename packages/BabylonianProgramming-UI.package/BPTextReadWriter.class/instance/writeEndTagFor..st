writing
writeEndTagFor: aTextAttribute

	[self nextPutAll: aTextAttribute anchoredMorph stopTag]
		on: MessageNotUnderstood do: []