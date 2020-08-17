rewrite rules
rewriteCascadeNode: aNode withTag: aTag

	| annotationInformation annotatedText innerText |
	annotationInformation := self value: aTag.
	
	innerText := 'bpr {1}' format: {self value: aNode}.
	annotatedText := self 
					perform: ('{1}:with:' format: {annotationInformation tag}) asSymbol 
					withArguments: {annotationInformation . innerText}.
	^ 'in: [:bpr | {1}]' format: {annotatedText}