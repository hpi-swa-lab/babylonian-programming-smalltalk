converting
unstyledTextFrom: aText

	"Re-implemented so that TextActions are not removed from aText"
	| answer |	
	answer := Text fromString: aText asBPSource.
	aText runs withStartStopAndValueDo: [:start :stop :attribs |
		(attribs anySatisfy: [:each | each shoutShouldPreserve])
			ifTrue: [
				attribs do: [:eachAttrib | answer 
					addAttribute: eachAttrib 
					from: start 
					to: (stop min: answer size)]]].
	^answer