accessing
labelOfSelectedObject

	^ self selectedObject ifNotNil: [:o | o asString] ifNil: ['nothing selected']