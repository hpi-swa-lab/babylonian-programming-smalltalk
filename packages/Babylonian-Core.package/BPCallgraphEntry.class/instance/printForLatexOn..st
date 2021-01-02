as yet unclassified
printForLatexOn: aStream
	
	aStream 
		nextPutAll: '[';
		nextPutAll: self latexLabel;
		nextPutAll: ',';
		nextPutAll: self latexAttributes;
		cr.
	
	self children do: [:child | child printForLatexOn: aStream].
	
	aStream 
		nextPutAll: ']';
		cr