as yet unclassified
binarySearchIn: aCollection theElement: anElement
<layer: #bpInstrumented>
< exampleNamed: 'basic' self: #empty given: # ( 1 2 3 ) and: 2 > < exampleNamed: 'not found' self: #empty given: # ( 1 2 3 ) and: 4 > < exampleNamed: 'weird error' self: #empty given: # ( 1 2 ) and: 2 >
| index low high test distance |  low := (self bpReplace: [1] with: [2] for: 'not found').
high := (self bpTrace: (aCollection size) forProbe: 1 inContext: thisContext).
distance := (self bpTrace: (high - low) forProbe: 2 inContext: thisContext).
[  high < low ] whileFalse: [  index := high + low // 2.
 ( test := anElement < ( aCollection at: index ) ) ifTrue: [  high := index - 1 ] ifFalse: [  anElement > ( aCollection at: index )  ifTrue: [  low := index + 1 ] ifFalse: [  ^ index ] ] ].