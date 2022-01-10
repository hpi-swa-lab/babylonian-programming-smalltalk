icons-accessing
supportIcon

	"Auto-generated"
	self flag: #workaround. "32 bit forms don't support black pixels, see
	http://forum.world.st/The-Trunk-GraphicsTests-pre-49-mcz-td5087181.html"
	^ (Icons 
		at: #babylonianProgrammingSupport
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self supportIconContents readStream) ])
		as8BitColorForm asMorph imageForm dyed: self iconColor.