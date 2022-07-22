*Babylonian-Core
bpAnnotations
	
	| cst annotations |
	^ self propertyValueAt: #bpAnnotations ifAbsent: [
		cst := PEGParserBPSmalltalk new
			match: self getSource asString 
			startingFrom: #MethodDeclaration.
		annotations := (BPSmalltalkGrammar semanticAction: BPExtractAnnotations new) value: cst.
		self propertyValueAt: #bpAnnotations put: annotations]