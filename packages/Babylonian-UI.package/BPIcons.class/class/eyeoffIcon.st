icons-accessing
eyeoffIcon
	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ Icons at: #babylonianProgrammingEyeoff
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self eyeoffIconContents readStream) ].