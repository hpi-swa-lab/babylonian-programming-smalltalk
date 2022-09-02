*Babylonian-UI-tracing
doBrowseActualImplementersFromProbe: probe andSelector: selector

	| classes example methods |
	example := BPExamples value activeExamples anyOne.
	
	classes := ((example trace valuesForProbeId: probe id)
		collect: [:traceValue | traceValue tracedValue])
		asSet asArray.
	methods := classes collect: [:class | (class lookupSelector: selector) reference].
	
	ToolSet default 
		browseMessageSet: methods
		name: 'Actual Implementors of ' , selector , ' in ' , example exampleName
		autoSelect: false.