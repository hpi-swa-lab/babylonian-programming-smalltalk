icons-accessing
moreHorizontalIcon
	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ Icons at: #babylonianProgrammingMoreHorizontal
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self moreHorizontalIconContents readStream) ].