private
emptyTraces
	
	"These are mostly used as placeholders to already add lines to trace-based morphs before 
	the examples arrive"
	^ BPActiveExamples value examples collect: [:e | 
		BPTrace new example: e; yourself]