icons-accessing
streamlineWrenchIcon

	"Auto-generated.
	Copyright Free vectors icons and illustrations from Streamline: https://streamlinehq.com"
	^ (Icons 
		at: #babylonianProgrammingStreamlineWrench
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self streamlineWrenchIconContents readStream) ])
		dyed: self iconColor.