baseline
postLoadCompiler
	
	PEGOhmParserGenerator generateFrom: BPSmalltalkGrammar.

	"So that the scanner recognizes SOH as a separator."
	Scanner initializeTypeTable.