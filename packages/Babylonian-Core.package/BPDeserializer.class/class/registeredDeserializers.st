constants
registeredDeserializers
	"List of all deserializers that can be used. Order is important: First valid class will be used"

	^ Array 
		with: BPMethodTestDeserializer 
		with: BPNegativeMethodTestDeserializer 
		with: BPBasicTestDeserializer