accessing
expectedResult

	^ referencedExample ifNil: [nil] ifNotNil: [:ex | ex expectedResult]