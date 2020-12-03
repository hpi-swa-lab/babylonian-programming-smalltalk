accessing
labelOfSelectedObject

	^ self selectedObject ifNotNil: [:anObject | anObject asString] ifNil: ['nothing selected']