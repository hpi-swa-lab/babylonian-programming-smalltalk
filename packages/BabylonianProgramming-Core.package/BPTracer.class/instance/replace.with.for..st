replacing
replace: aBlockClosure with: anObject for: exampleName 
	
	^ self trace example exampleName = exampleName
		ifTrue: [anObject]
		ifFalse: aBlockClosure