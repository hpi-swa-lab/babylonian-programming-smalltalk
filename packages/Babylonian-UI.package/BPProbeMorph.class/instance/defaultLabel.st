accessing
defaultLabel
	
	| className methodName probeId shortMethodName |
	
	className := self annotation methodReference classSymbol asString.
	methodName := self annotation methodReference methodSymbol asString.
	probeId := self annotation id asString.
	
	"shorten method name countUpTo:butSkip: -> cUT:bS:"
	shortMethodName := ((methodName splitBy: ':') collect: [:aSubMethod |
		aSubMethod = '' 
			ifTrue: [aSubMethod]
			ifFalse: ['{1}{2}' format: {aSubMethod first . aSubMethod select: [:aChar | aChar isUppercase]}]]
		) fold: [:aString :anotherString | aString, ':', anotherString].
	
	^ '''{1}>>{2}-{3}''' format: { className . shortMethodName . probeId }.