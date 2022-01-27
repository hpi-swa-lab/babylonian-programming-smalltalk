private -ui 
isDisplaying: aBPExample in: aColumnMorph

	^ (aColumnMorph valueOfProperty: #displayedExample) uniqueIdentifier = aBPExample uniqueIdentifier 