accessing
referencedExampleName
	^ referencedExample ifNil: ['no example referenced yet'] ifNotNil: [:ex | ex exampleName]