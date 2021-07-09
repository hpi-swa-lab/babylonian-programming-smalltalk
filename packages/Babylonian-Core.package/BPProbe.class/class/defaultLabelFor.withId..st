utility
defaultLabelFor: aMethodReference withId: aNumber
	
	"shorten method name countUpTo:butSkip: -> cUT:bS:"
	| shortMethodName |

	shortMethodName := ((aMethodReference selector splitBy: ':')
		collect: [:aSubMethod |
			aSubMethod = '' 
				ifTrue: [aSubMethod]
				ifFalse: ['{1}{2}' format: {aSubMethod first . aSubMethod select: [:aChar | aChar isUppercase]}]])
		fold: [:aString :anotherString | aString, ':', anotherString].
	
	^ '{1}>>{2}-{3}' format: { aMethodReference actualClass . shortMethodName . aNumber }.