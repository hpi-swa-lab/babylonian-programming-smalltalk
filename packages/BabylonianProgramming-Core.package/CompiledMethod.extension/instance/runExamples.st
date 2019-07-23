*BabylonianProgramming-Core
runExamples

	| results |
	results := self bpActiveExamples collect: [:example | example trace].
	self propertyValueAt: #bpTrace put: results