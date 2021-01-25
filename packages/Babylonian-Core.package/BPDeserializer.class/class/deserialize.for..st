building
deserialize: aTest for: anExampleConsumer
	"Deserializes a given Test into a newly generated Example. Consumer is the method which uses the example"

	^ ((self registeredDeserializers collect: [:d | d for: anExampleConsumer from: aTest]) detect: [:d | d canDeserialize]) deserialize