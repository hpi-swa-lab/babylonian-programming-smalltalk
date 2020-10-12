private
valueMorphFor: traceValue
	
	| value valueContainer morph |
	value := traceValue tracedValue.
	valueContainer := self newContainerMorph.
	morph := (value isCollection or: [value isNumber])
		ifTrue: [valueContainer addMorphBack: value printString asText asMorph]
		ifFalse: [
			valueContainer 
				addMorphBack: (self iconForValue: value);
				addMorphBack:	 (' ' , value printString) asText asMorph].
			
	morph on: #click send: #value to: [value explore].
	^ morph 