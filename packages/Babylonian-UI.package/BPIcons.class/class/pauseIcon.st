icons-accessing
pauseIcon

	"Auto-generated.
	Copyright Material Icons: https://material.io/resources/icons/.
licensed under Apache license 2.0"
	self flag: #workaround. "32 bit forms don't support black pixels, see
	http://forum.world.st/The-Trunk-GraphicsTests-pre-49-mcz-td5087181.html"
	^ (Icons 
		at: #babylonianProgrammingPause
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pauseIconContents readStream) ])
		as8BitColorForm asMorph imageForm dyed: self iconColor.