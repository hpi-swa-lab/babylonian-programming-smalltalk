accessing
exampleLabelFor: anExample
	
	^ anExample method methodClass className asString , 
			' - ' , 
			anExample method selector asString , 
			' - ' , 
			anExample exampleName asString