accessing
defaultLabel
	
	| className methodName submethodNames shortSubName shortMethodName probeId |
	
	className := self annotation methodReference classSymbol asString.
	methodName := self annotation methodReference methodSymbol asString.
	probeId := self annotation id asString.
	
	"shorten method name countUpTo:butSkip: -> cUT:bS:"
	shortMethodName := ''.
	submethodNames := methodName splitBy: ':'.
	submethodNames do: [:aName |
		shortMethodName := aName = ''
			ifFalse: [
				shortSubName := aName first asString.
				aName asArray do: [:aChar |
					aChar isUppercase ifTrue: [shortSubName := shortSubName, aChar asString].
					aChar = $: ifTrue: [shortSubName := shortSubName, aChar asString]].
				'{1}:{2}' format: { shortMethodName . shortSubName }]
			ifTrue: [shortMethodName, ':']]. "if last one is an empty string the method must take parameters"
	
	^ '''{1}>>{2}-{3}''' format: { className . shortMethodName allButFirst . probeId }.