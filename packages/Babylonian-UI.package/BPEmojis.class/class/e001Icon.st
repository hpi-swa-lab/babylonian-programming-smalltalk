accessing
e001Icon
	"Auto-generated.
	Copyright by OpenMoji (https://www.openmoji.org)
licensed under CC BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
	^ Icons at: #emojiBabylonianProgrammingE001
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self e001IconContents readStream) ].