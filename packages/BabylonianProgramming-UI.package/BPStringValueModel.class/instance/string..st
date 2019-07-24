accessing
string: aString

	string := aString asString.
	self onChangeBlock ifNotNil: [:changeBlock | changeBlock value: string].