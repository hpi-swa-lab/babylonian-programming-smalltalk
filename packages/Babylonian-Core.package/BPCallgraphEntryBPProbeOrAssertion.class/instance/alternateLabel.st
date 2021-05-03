as yet unclassified
alternateLabel
	
	| parts method | 

	parts := self label splitBy: String tab.
	method := self traceValue methodReference classSymbol,
		' >> #',
		self traceValue methodReference methodSymbol.

	^ ('' asText), parts first, ' (', parts third, ') at ', (method asText
		addAttribute: TextEmphasis italic;
		yourself), ' | ', parts second