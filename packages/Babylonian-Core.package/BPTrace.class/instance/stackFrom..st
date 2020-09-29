private
stackFrom: aContext
	
	^ (aContext stackOfSize: 100) collect: [:context | 
		self mementoFor: context]