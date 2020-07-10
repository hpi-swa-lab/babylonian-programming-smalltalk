writing
writeContent: aString

	aString do: [:char | char = Character startOfHeader ifFalse: [self nextPut: char]].