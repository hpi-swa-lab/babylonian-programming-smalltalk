accessing
object: anObject

	object := anObject.
	self onChangeBlock ifNotNil: [:changeBlock | changeBlock value: anObject].
	self changed