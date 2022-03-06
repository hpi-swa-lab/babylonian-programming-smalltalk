searching
binarySearch: anElement
	| index low high | 
	low := 1.
	high := self size. 
	 
	[high < low] whileFalseDo: [
		index := high + low // 2.	 
		
		(anElement < (self at: "<bpProbe id: 3156627>"index"</bpProbe>"))
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (self at: index)
					ifTrue: [ low := index + 1]
					ifFalse: [ ^ index ]]].