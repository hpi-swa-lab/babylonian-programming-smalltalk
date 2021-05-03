3 - disable tracing
disableTracingForClass: aClass
	
	
	aClass selectors do: [:selector | self disableTracingForClass: aClass selector: selector]