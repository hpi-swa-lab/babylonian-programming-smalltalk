searching
binarySearch: anElement
	<exampleNamed: 'basic' active: true self: 'BPSearchCollection newFrom: (1 to: 15)' with: '15' expectedResult: '15'>
	<exampleNamed: 'not found' active: true self: '#numbersUpTo10' with: '20' expectedResult: 'BPSearchCollection newFrom: (1 to: 10)'>
	<exampleNamed: 'large example' active: true self: '#numbersUpTo10000' with: '4532' expectedResult: 4532>
	| index low high |
	low := 1.
	high := self size. 
	 
	[high < low] whileFalseDo: [  
		index := "<bpAssert id: 7345425 for: 'BPSearchCollection>>#binarySearch:>>#''large example''' that: [:result | result between: 4000 and: 5000]>"high + low // 2"</bpAssert>".	 
		
		(anElement < (self at: "<bpProbe id: 3156627>"index"</bpProbe>"))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (self at: index)
					ifTrue: [ low := index + 1]
					ifFalse: [ ^ index ]]].