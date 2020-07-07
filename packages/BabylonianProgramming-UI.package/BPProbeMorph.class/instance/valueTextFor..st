private
valueTextFor: traceValue

	| value |
	value := traceValue tracedValue.
	^ (value isCollection or: [value isNumber])
		ifTrue: [value printString asText]
		ifFalse: [| iconMorph |
			iconMorph := self iconForValue: value.
			((Text 
				string: Character startOfHeader asString 
				attributes: {TextAnchor new 
					anchoredMorph: iconMorph; 
					yourself}) , 
			String space ,
			value printString asText)]
	