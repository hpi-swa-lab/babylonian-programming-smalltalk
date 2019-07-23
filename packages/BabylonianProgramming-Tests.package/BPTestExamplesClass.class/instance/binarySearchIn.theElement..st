example methods
binarySearchIn: aCollection theElement: anElement
	<exampleNamed: 'basic' self: #empty given: #(1 2 3) and: 3> 
	<exampleNamed: 'not found' self: #empty given: #(1 2 3) and: 4>
	<exampleNamed: 'error example' self: #empty given: #(1 2) and: 2>
	<exampleNamed: 'complex example' self: #empty given: '{DateAndTime yesterday . DateAndTime tomorrow . DateAndTime now}' and: 'DateAndTime now'>
       
	| index low high test distance | 
	low := 1.
	high := "<bpProbe id: 6415547>"aCollection size"</bpProbe>".
	distance := high - low. 	

	[ high < low ] whileFalse: [
		index := high + low // 2.	
		(test := anElement < ("<bpProbe id: 1082664>"aCollection at: index"</bpProbe>"))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (aCollection at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ "<bpProbe id: 6094846>"index"</bpProbe>" ] ] ].