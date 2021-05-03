bottom bar
bottomBarText
	
	^ self selectedExample
		ifNil: ['']
		ifNotNil: [:example | | size |
			size := (BPSelectedCallgraphEntries forExample: example) size.
			size asString, ' selected entries']