icons-accessing
wrenchIcon

	"Auto-generated.
	
	Silk Icons
	© 2005-2006 Mark James
	Website: http://www.famfamfam.com
	License: http://creativecommons.org/licenses/by/2.5"
	
	self flag: #workaround. "32 bit forms don't support black pixels, see
	http://forum.world.st/The-Trunk-GraphicsTests-pre-49-mcz-td5087181.html"
	^ (Icons
		at: #silkWrench
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self wrenchIconContents readStream) ])
		"as8BitColorForm asMorph imageForm dyed: self iconColor."