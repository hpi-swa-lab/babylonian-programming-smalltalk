icons-accessing
linkIcon

	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ (Icons 
		at: #babylonianProgrammingLink
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self linkIconContents readStream) ])
		dyed: self iconColor.