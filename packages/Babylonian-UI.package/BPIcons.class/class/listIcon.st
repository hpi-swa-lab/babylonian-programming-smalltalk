icons - accessing
listIcon
	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ Icons at: #babylonianProgrammingList
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self listIconContents readStream) ].