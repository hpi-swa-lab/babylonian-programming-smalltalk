accessing
context: aBPPrintbuggerContext
	
	context ifNotNil: [context removeDependent: self].
	context := aBPPrintbuggerContext.
	context addDependent: self.