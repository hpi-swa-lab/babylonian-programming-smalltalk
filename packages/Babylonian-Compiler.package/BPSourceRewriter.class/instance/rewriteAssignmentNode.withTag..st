rewrite rules
rewriteAssignmentNode: aNode withTag: aTag

	| annotationInformation variableNames |
	annotationInformation := self value: aTag.

	^ annotationInformation isProbe 
		ifFalse: [self rewriteNode: aNode withTag: aTag]
		ifTrue: ["To handle assignment probes"
				annotationInformation := annotationInformation asAssignmentProbe.
				"The following is a hack to some degree, but a separate semantic would be overkill here"
				variableNames := aNode children first "NormalStatement" children first "AssignmentOperation*" children collect: [:assignment |
					assignment children first interval contents].
				annotationInformation variableNames: variableNames.
				annotationInformation instrumentationCallFor: (self value: aNode)]