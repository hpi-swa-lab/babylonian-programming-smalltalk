private
insertExamplesMorph: aBPExamplesMorph into: aText withNewLineStartingFrom: aStartIndex to: anEndIndex
	
	^ (aText size < anEndIndex)
		ifTrue: [ aText append: (self newLineWithAttributesOf: aBPExamplesMorph)]
		ifFalse: [ aText 
					copyReplaceFrom: aStartIndex
					to: anEndIndex
					with: (self newLineWithAttributesOf: aBPExamplesMorph)]
		