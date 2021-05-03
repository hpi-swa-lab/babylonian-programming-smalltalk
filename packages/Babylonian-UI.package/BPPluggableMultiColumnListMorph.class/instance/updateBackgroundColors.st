as yet unclassified
updateBackgroundColors
	
	| size |
	getBackgroundColorSelector ifNil: [^ self].
	size := self fullListSize.
	backgroundColorList := OrderedCollection new: size.
	1 to: size do: [:i | backgroundColorList addLast: (model perform: getBackgroundColorSelector with: i)]