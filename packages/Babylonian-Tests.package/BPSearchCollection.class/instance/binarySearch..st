searching
binarySearch: anElement
	<testRef: 'BPSearchCollectionTest>>#testBasic'>
	<testRef: 'BPSearchCollectionTest>>#testNotFound'>
	<testRef: 'BPSearchCollectionTest>>#testLargeExample'>
	| index low high |
	low := 1. 
	high := self size. 
	 
	[high < low] whileFalseDo: [  
		index := high + low // 2.	 
		
		(anElement < (self at:index))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (self at: index)
					ifTrue: [ low := index + 1]
					ifFalse: [ ^ index ]]].