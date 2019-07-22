private
binarySearchIn: aCollection theElement: anElement
<layer: #bpInstrumented>
< exampleNamed: 'basic' self: #empty given: # ( 1 2 3 ) and: 3 > < exampleNamed: 'not found' self: #empty given: # ( 1 2 3 ) and: 4 > < exampleNamed: 'error example' self: #empty given: # ( 1 2 ) and: 2 >
| index low high test distance |  low := 1.
high := (self bpTrace: (aCollection size) forProbe: 8732393 inContext: thisContext).
distance := (self bpTrace: (high - low) forProbe: 2 inContext: thisContext).
[  (self bpTrace: (high < low) forProbe: 1895986 inContext: thisContext) ] whileFalse: [  index := high + low // 2.
 ( test := anElement < ( aCollection at: index ) ) ifTrue: [  high := index - 1 ] ifFalse: [  anElement > ( aCollection at: index )  ifTrue: [  low := index + 1 ] ifFalse: [  ^ (self bpTrace: (index) forProbe: 6094846 inContext: thisContext) ] ] ].