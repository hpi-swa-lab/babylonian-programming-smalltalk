icons-accessing
streamlineWrenchIcon

	"Auto-generated.
	Copyright Free vectors icons and illustrations from Streamline: https://streamlinehq.com"
	self flag: #workaround. "32 bit forms don't support black pixels, see
	http://forum.world.st/The-Trunk-GraphicsTests-pre-49-mcz-td5087181.html"
	^ (Icons 
		at: #babylonianProgrammingStreamlineWrench
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self streamlineWrenchIconContents readStream) ])
		as8BitColorForm asMorph imageForm dyed: self iconColor.