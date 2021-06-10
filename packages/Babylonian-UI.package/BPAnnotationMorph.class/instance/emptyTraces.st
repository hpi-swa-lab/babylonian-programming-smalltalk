private
emptyTraces
	
	"These are mostly used as placeholders to already add lines to trace-based morphs before 
	the actual trace values arrive"
	^ BPExamples value activeExamples collect: [:anExample | 
		BPTrace new example: anExample; yourself]