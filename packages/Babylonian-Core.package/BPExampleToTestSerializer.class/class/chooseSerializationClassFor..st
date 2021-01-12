serialize
chooseSerializationClassFor: anExample

	^ self serializationClasses detect: [:aSerializationClass | aSerializationClass canSerialize: anExample]