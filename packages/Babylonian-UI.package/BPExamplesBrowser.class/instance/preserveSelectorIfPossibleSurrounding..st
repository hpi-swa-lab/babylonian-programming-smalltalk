private
preserveSelectorIfPossibleSurrounding: aBlock
	
	"Copied from Lexicon>>#reformulateList"
	| aClass aSelector |
	aClass := self selectedClassOrMetaClass.
	aSelector := self selectedMessageName.
	aBlock value.
	self maybeReselectClass: aClass selector: aSelector