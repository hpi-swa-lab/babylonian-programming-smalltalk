serialize
serialize: anExample

	"Returns the created method."
	^ (self chooseSerializationClassFor: anExample) serialize: anExample