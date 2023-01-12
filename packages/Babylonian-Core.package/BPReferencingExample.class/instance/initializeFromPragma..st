initialize-release
initializeFromPragma: aPragma

	uuid := aPragma arguments first asSymbol.
	
	BPExamples value examples
		detect: [:example | example uniqueIdentifier = aPragma arguments second]
		ifFound: [:example | self referencedExample: example]
		ifNone: ["welp"]
	