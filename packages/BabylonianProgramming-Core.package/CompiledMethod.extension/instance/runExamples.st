*BabylonianProgramming-Core
runExamples

	| results |
	results := self bpActiveExamples collect: [:example | example trace].
	results do: [:t | BPTraces value at: t example uniqueIdentifier put: t].