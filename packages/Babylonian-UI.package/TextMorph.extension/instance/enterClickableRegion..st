*Babylonian-UI
enterClickableRegion: evt
	| index isLink |
	evt hand hasSubmorphs ifTrue:[^false].
	(self submorphs anySatisfy: [:m | m containsPoint: evt position]) ifTrue: [
		evt hand showTemporaryCursor: nil.
		^ true].
	paragraph ifNotNil:[
		index := (paragraph characterBlockAtPoint: evt position) stringIndex.
		isLink := (paragraph text attributesAt: index forStyle: paragraph textStyle) 
					anySatisfy:[:attr| attr mayActOnClick].
		isLink ifTrue: [
			evt hand showTemporaryCursor: Cursor webLink.
			^ true]].
	^ false