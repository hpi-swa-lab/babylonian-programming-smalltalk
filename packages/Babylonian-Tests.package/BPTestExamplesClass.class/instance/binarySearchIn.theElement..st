example methods
binarySearchIn: aCollection theElement: anElement

	<testRef: 'BPTestExamplesClassTest>>#testBasic'>
	<testRef: 'BPTestExamplesClassTest>>#testSmallExample'>
	<testRef: 'BPTestExamplesClassTest>>#testErrorExample'>
	<testRef: 'BPTestExamplesClassTest>>#testComplexExample' setUp: '#basicSetUpScript' tearDown: '#basicTearDownScript'>
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
					ifFalse: [ ^ "<bpProbe id: 6835596>"index"</bpProbe>" ] ] ].
