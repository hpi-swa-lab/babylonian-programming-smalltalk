*Babylonian-Core-Callgraph-ByteCode
genNops: aNumber
	
	| size |
	
	size := self copy sizeJump: aNumber - 1.
	size == 1
		ifTrue: [self genJump: aNumber - 1]
		ifFalse: [self genJumpLong: aNumber - size].
	
	self assert: self copy sizeDup == 1.
	1 to: aNumber - size do: [:i | self genDup]