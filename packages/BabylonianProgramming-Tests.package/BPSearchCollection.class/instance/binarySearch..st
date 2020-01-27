as yet unclassified
binarySearch: anElement
	<exampleNamed: 'basic' active: true self: 'BPSearchCollection newFrom: (1 to: 15)' with: '13'>
	<exampleNamed: 'not found' self: #numbersUpTo10 with: '20'>
	<exampleNamed: 'broken example' with: ''>
 
	| index low high flag |  
	low := 1. 
	high := self size.  
	flag := Object new.	
	
	[high < low] whileFalse: [
		index := "<bpAssert id: 7345425 for: 'BPSearchCollection>>#binarySearch:>>#''not found''' that: [:result | result < 20]>"high + low // 2"</bpAssert>".	 
		(anElement < (self at: "<bpProbe id: 3156627>"index"</bpProbe>"))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (self at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ "<bpProbe id: 5475766>"index"</bpProbe>" ]]].