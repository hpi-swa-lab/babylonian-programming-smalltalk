accessing
emphasizeScanner: scanner
	"Set the emphasis for text scanning"
	| emphasis |
	emphasis := self anchoredMorph textEmphasis ifNil: [
		self anchoredMorph visible 
			ifTrue: [TextEmphasis underlined]
			ifFalse: [TextEmphasis normal]].
	emphasis emphasizeScanner: scanner.