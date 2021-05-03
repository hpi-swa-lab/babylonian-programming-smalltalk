as yet unclassified
printForLatexOn: aStream
	
	aStream
		nextPutAll: (String new: self path size withAll: Character tab);
		nextPutAll: '[';
		nextPutAll: self latexLabel;
		nextPutAll: ',';
		nextPutAll: self latexAttributes;
		cr.
	
	self children do: [:child | child printForLatexOn: aStream].
	
	aStream 
		nextPutAll: (String new: self path size withAll: Character tab);
		nextPutAll: ']';
		cr