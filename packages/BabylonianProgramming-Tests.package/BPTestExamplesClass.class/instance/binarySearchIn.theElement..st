example methods
binarySearchIn: aCollection theElement: anElement
	<exampleNamed: 'basic' given: #(1 2 3) and: 2> 
	<exampleNamed: 'not found' given: #(1 2 3) and: 4>
	<exampleNamed: 'weird error' given: #(1 2) and: 2>
	
	| index low high test defaultDirectory anotherVariable |
	defaultDirectory := "<bpReplace for: 'weird error'; value: 'nil'>"FileDirectory default"</bpReplace>".
	anotherVariable := "<bpProbe>"defaultDirectory / 'test'"<bpProbe>".
	
	low := 1.
	"<bpProbe>"high"</bpProbe>" := self size.
	
	"BPProber record: #high valueBefore: high.
	[high := self size.
	   BPProber record: #high valueAfter: high] 
		on: Error do: [:e | BPProber record: #high valueAfter: e].	"
		
	[ high < low ] whileFalse: [
		index := high + low // 2.	
		(test := aCollection < (self at: index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				aCollection > (self at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ index ] ] ].