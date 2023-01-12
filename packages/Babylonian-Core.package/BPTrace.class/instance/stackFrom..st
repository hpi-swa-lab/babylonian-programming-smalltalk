private
stackFrom: aContext
	^ (aContext stackOfSize: self class maxStackSize) collect: [:context | 
		self mementoFor: context]