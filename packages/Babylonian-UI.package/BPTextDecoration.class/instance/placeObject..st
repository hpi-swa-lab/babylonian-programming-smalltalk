accessing
placeObject: scanner
	(previousScanners includesKey: scanner) ifFalse: [
		previousScanners at: scanner put: true.
		scanner placeEmbeddedObjectFrom: self].