building
deserialize: aTest
	
	"Deserializes a given Test into a newly generated Example. Consumer is the method which uses the example"

	^ ((self registeredDeserializers collect: [:d | d for: aTest]) detect: [:d | d canDeserialize]) deserialize