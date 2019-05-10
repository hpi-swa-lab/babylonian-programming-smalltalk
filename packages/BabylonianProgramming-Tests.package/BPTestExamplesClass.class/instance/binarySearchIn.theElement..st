example methods
binarySearchIn: aCollection theElement: anElement
	<exampleNamed: 'basic' given: #(1 2 3) and: 2> 
	<exampleNamed: 'not found' given: #(1 2 3) and: 4>
	<exampleNamed: 'weird error' given: #(1 2) and: 2>
     
	| index low high test defaultDirectory anotherVariable |
	defaultDirectory := "<bpReplace for: 'weird error' value: 'nil'>"#someString"</bpReplace>".
	anotherVariable := "<bpProbe>"defaultDirectory , #test"</bpProbe>".
    
	low := 1.
	high := aCollection size.
		
	[ high < low ] whileFalse: [
		index := high + low // 2.	
		(test := anElement < (aCollection at: index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (aCollection at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ index ] ] ].