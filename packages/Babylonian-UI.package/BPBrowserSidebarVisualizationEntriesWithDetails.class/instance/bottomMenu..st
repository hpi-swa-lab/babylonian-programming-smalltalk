list bottom
bottomMenu: shiftKeyState
	
	| entry menu |
	entry := self bottomEntryByIndex: self bottomIndex.
	menu := MenuMorph new.
	self bottomMenu: menu for: entry.
	^ menu hasItems ifTrue: [menu] ifFalse: [nil]