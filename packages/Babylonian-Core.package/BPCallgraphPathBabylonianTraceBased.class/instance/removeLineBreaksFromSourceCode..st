printing
removeLineBreaksFromSourceCode: aString

	^ ((aString splitBy: String cr) collect: #withBlanksTrimmed) joinSeparatedBy: ' '