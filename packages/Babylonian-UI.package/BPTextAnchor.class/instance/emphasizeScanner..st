accessing
emphasizeScanner: scanner
	"Set the emphasist for text scanning"
	
	(self anchoredMorph textEmphasis 
		ifNil: [TextEmphasis underlined]) emphasizeScanner: scanner