accessing
placeObject: scanner from: aText at: lastIndex
	(previousScanners includesKey: scanner) ifFalse: [
		previousScanners at: scanner put: true.
		"The following prevents placing objects for text decorations that are processed by the
		scanner on a partial scanning process in which the scanner might start in the middle
		of a text decoration range. If we would not guard against this, the decoration would jump
		between the beginning of the range and the line at which the partial scan starts."
		(lastIndex = 1 or: [((aText attributesAt: lastIndex - 1) includes: self) not]) ifTrue: [
			scanner placeEmbeddedObjectFrom: self]].