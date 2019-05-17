example methods
binarySearchIn: aCollection theElement: anElement
	<exampleNamed: 'basic' self: #empty given: #(1 2 3) and: 2> 
	<exampleNamed: 'not found' self: #empty given: #(1 2 3) and: 4>
	<exampleNamed: 'weird error' self: #empty given: #(1 2) and: 2>
     
	| index low high test distance | 
	low := "<bpReplace for: 'not found' with: 2>"1"</bpReplace>".
	high := "<bpProbe>"aCollection size"</bpProbe>".
	distance := "<bpProbe>"high - low"</bpProbe>". 	
	    
	[ high < low ] whileFalse: [
		index := high + low // 2.	
		(test := anElement < (aCollection at: index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (aCollection at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ index ] ] ].