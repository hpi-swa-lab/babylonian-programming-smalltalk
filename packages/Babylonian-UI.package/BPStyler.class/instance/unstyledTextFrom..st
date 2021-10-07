converting
unstyledTextFrom: aText
	
	| answer |	
	answer := Text fromString: aText asBPSource.
	aText runs withStartStopAndValueDo: [:start :stop :attribs |
		(attribs anySatisfy: [:each | each shoutShouldPreserve])
			ifTrue: [
				attribs do: [:eachAttrib |answer addAttribute: eachAttrib from: start to: stop]]].
	^answer
	
	"^ Text fromString: aText asBPSource" "nur aText zurückgeben damit es gestyled ist"
	"^ aText"