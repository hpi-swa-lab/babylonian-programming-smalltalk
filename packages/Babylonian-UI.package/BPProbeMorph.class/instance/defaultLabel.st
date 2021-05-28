accessing
defaultLabel
	
	| className methodName submethodNames shortSubName shortMethodName probeId |
	
	className := self annotation methodReference classSymbol asString.
	methodName := self annotation methodReference methodSymbol asString.
	probeId := self annotation id asString.
	
	"shorten method name countUpTo:butSkip: -> cUT:bS:"
	shortMethodName := ''.
	submethodNames := methodName splitBy: ':'.
	submethodNames do: [:name |
		shortMethodName := name = ''
			ifFalse: [
				shortSubName := name first asString.
				name asArray do: [:char |
					char isUppercase ifTrue: [shortSubName := shortSubName, char asString].
					char = $: ifTrue: [shortSubName := shortSubName, char asString]].
				'{1}:{2}' format: { shortMethodName . shortSubName }]
			ifTrue: [shortMethodName, ':']]. "it last one is an empty string the method must take parameters"
	
	^ '''{1}>>{2}-{3}''' format: { className . shortMethodName allButFirst . probeId }.