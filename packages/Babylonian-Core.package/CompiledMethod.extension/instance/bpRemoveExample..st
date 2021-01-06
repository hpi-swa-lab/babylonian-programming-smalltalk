*Babylonian-Core
bpRemoveExample: anExample
	
	"This is were new examples are created. The other place where examples come to be is CompiledMethod>>#bpExamples"
	self bpExamples remove: anExample ifAbsent: [].
	self bpExamples changed: #bpExamples.