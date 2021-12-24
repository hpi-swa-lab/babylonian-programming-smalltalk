icons-accessing
barChartIcon

	"Auto-generated.
	Copyright Feather Icons: https://github.com/feathericons/feather.
licensed under MIT license"
	^ (Icons 
		at: #babylonianProgrammingBarChart
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self barChartIconContents readStream) ])
		dyed: self iconColor.