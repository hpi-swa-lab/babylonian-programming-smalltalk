private - ui
editFieldStyledInitialContent: aString onChange: changeBlock onAccept: acceptBlock
	
	
	| field |
	field := self 
		editFieldInitialContent: aString 
		onChange: changeBlock 
		onAccept: acceptBlock.
		
	field
		styler: (SHTextStylerST80 new view: field);
		updateStyleNow.

	^ field