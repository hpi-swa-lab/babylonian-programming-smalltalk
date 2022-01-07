icons-accessing
settingsIcon

	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	self flag: #workaround. "32 bit forms don't support black pixels, see
	http://forum.world.st/The-Trunk-GraphicsTests-pre-49-mcz-td5087181.html"
	^ (Icons 
		at: #babylonianProgrammingSettings
		ifAbsentPut:[Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self settingsIconContents readStream) ])
		as8BitColorForm asMorph imageForm dyed: self iconColor.