icons-accessing
settingsIcon

	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ (Icons 
		at: #babylonianProgrammingSettings
		ifAbsentPut:[Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self settingsIconContents readStream) ])
		dyed: self iconColor.