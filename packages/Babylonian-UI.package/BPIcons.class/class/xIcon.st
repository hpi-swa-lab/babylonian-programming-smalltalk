icons-accessing
xIcon
	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ Icons at: #babylonianProgrammingX
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self xIconContents readStream) ].