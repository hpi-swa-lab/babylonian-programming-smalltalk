list top
topEntries
	
	
	^ cache 
		at: #topEntries 
		ifAbsentPut: [
			((self callgraph 
				select: [:each | each class == BPCallgraphEntryEnter]) 
				collect: #asPathPart) 
				withoutDuplicates
				sorted: [:a :b |
					a getClass name = b getClass name
						ifTrue: [a getSelector < b getSelector]
						ifFalse: [a getClass name < b getClass name]]]