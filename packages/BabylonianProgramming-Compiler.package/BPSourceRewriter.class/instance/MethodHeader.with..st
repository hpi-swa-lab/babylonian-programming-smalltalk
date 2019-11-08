grammar rules
MethodHeader: aNode with: header

	^ (self value: header) , String cr , String tab , '<layer: #bpInstrumented>'