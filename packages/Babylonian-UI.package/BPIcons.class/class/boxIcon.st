icons-accessing
boxIcon
	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ Icons at: #babylonianProgrammingBox
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self boxIconContents readStream) ].