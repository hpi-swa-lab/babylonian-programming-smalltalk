private
valuesTextFor: trace

	| texts |
	(trace valuesForProbeId: self id) ifEmpty: [
		^ (Text fromString: 'no values') addAttribute: TextColor gray; yourself].
 	texts := (trace valuesForProbeId: self id) collect: [:v | | value |
		value := v tracedValue.
		(value isCollection or: [value isNumber])
			ifTrue: [value printString asText]
			ifFalse: [| iconMorph |
				value isMorph
					ifTrue: [iconMorph := (value imageForm scaledToSize: self iconSize * 4) asMorph]
					ifFalse: [iconMorph := ((BPEmojis emojiFor: value) scaledToSize: self iconSize * 1.1) asMorph].
				((Text 
					string: Character startOfHeader asString 
					attributes: {TextAnchor new 
						anchoredMorph: iconMorph; 
						yourself}) , 
				String space ,
				value printString asText)]].
	^ Text streamContents: [:str | texts 
			do: [:t | str << t]
			separatedBy: [str << ', ' asText]]