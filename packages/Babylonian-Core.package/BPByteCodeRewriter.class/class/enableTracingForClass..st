2 - enable tracing
enableTracingForClass: aClass
	
	
	aClass selectors do: [:selector | self enableTracingForClass: aClass selector: selector]