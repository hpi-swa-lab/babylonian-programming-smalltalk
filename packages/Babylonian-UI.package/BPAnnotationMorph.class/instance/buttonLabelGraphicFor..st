private - ui
buttonLabelGraphicFor: aString
	
	^((TextMorph string: aString size: self class smallFontHeight) 
		textColor: self class actionTextColor; yourself) imageForm