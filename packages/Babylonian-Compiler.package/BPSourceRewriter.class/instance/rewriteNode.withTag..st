rewrite rules
rewriteNode: aNode withTag: aTag
	
	| annotationInformation |
	annotationInformation := self value: aTag.
	
	^ self 
		perform: ('{1}:with:' format: {annotationInformation tag}) asSymbol 
		withArguments: {annotationInformation . aNode}