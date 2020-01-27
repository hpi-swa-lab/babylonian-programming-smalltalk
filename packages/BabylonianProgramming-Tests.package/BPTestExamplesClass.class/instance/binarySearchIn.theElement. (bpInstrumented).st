as yet unclassified
binarySearchIn: aCollection theElement: anElement
	<layer: #bpInstrumented>
	<exampleNamed: 'basic' active: true self: #empty with: '#(1 2 3)' with: '1'>                                                   
	<exampleNamed: 'not found' active: true self: #empty with: #(2 3 4 5) with: '1'>                                                    
	<exampleNamed: 'error example' active: true self: #empty with: #(1 2 4) with: '3'>                                                     
	<exampleNamed: 'complex example' self: #empty with: '{Date yesterday . DateAndTime tomorrow . Date today}' with: 'Date today'>                                          
	| index low test distance high | 
	low := 1.  
	high := aCollection size.
	self otherMethod.
	distance := high - low. 
	self otherMethod.
 
	[ high < (self bpTrace: [low] forProbe: 2785795 inContext: thisContext)] whileFalse: [ 
		index := high + low // 2.	 
		(test := anElement < (aCollection at: index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (aCollection at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ (self bpTrace: [index] forProbe: 6094846 inContext: thisContext) ] ] ].