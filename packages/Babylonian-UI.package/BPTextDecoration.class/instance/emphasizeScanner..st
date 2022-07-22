accessing
emphasizeScanner: scanner
	"Set the emphasis for text scanning"
	(self anchoredMorph textEmphasis 
		ifNil: [TextEmphasis underlined]) emphasizeScanner: scanner.