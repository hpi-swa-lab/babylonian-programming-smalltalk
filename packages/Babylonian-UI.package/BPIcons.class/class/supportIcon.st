icons-accessing
supportIcon
	
	"Auto-generated"
	^ Icons at: #babylonianProgrammingSupport
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self supportIconContents readStream) ].