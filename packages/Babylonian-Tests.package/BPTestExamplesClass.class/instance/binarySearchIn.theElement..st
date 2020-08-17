example methods
binarySearchIn: aCollection theElement: anElement
	<exampleNamed: 'basic' active: true self: #empty with: '#(3 1 2)' with: '1'>                                                                
	<exampleNamed: 'small example' active: true self: #empty with: '#(3 1 2)' with: '1'>                                                                 
	<exampleNamed: 'error example' self: #empty with: #(1 2 4) with: '3'>                                                                  
	<exampleNamed: 'complex example' active: true self: #empty with: '{Date yesterday . DateAndTime tomorrow . Date today}' with: 'Date today'>                                                       
	| index low test distance high | 
	low := 1.  
	high := aCollection size.
	self otherMethod.
	distance := high - low. 
	self otherMethod.
 
	[ high < low] whileFalse: [ 
		index := high + low // 2.	 
		(test := anElement < (aCollection at: index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (aCollection at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ "<bpProbe id: 6094846>"index"</bpProbe>" ] ] ].