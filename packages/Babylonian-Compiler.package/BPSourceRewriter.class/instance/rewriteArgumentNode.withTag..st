rewrite rules
rewriteArgumentNode: aNode withTag: aTag

	| annotationInformation |
	annotationInformation := self value: aTag.

	^ annotationInformation isProbe 
		ifFalse: [self rewriteNode: aNode withTag: aTag]
		ifTrue: ["To handle argument probes"
				annotationInformation := annotationInformation asArgumentProbe.
				annotationInformation argumentName: aNode children first "NormalArgument" children first interval contents.
				argumentProbes add: (annotationInformation instrumentationCallFor: (self value: aNode)).
				self value: aNode children first]