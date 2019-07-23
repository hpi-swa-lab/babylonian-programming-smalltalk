private
valuesTextFor: trace

 	^ (trace valuesForProbeId: self id) inject: Text new into: [:result :v | | value |
		value := v tracedValue.
		(value isCollection or: [value isNumber])
			ifTrue: [result , value printString asText]
			ifFalse: [ result ,
				((Text string: Character startOfHeader asString attributes: {TextAnchor new anchoredMorph: ((BPEmojis emojiFor: value) scaledToSize: 14) asMorph; yourself}) , 
				String space asText ,
				value printString asText)]]