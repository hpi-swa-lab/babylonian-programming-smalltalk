list top
topMenu: shiftKeyState
	
	| entry menu |
	entry := self topEntryByIndex: self topIndex.
	menu := MenuMorph new.
	self topMenu: menu for: entry.
	^ menu hasItems ifTrue: [menu] ifFalse: [nil]