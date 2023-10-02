private - ui
editFieldStyledInitialContent: aText onChange: changeBlock onAccept: acceptBlock
	
	
	| field |
	field := self 
		editFieldInitialContent: aText 
		onChange: changeBlock 
		onAccept: acceptBlock.
		
	field
		styler: (SHTextStylerST80 new view: field);
		updateStyleNow.

	^ field