serialize
serialize: anExample

	^ (self chooseSerializationClassFor: anExample) serialize: anExample