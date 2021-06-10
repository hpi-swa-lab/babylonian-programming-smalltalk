icons-accessing
pauseIcon
	"Auto-generated.
	Copyright Material Icons: https://material.io/resources/icons/.
licensed under Apache license 2.0"
	^ Icons at: #babylonianProgrammingPause
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pauseIconContents readStream) ].