private - ui
checkAndConvertValuesMorphIfNecessary: valuesMorph
	
	^ valuesMorph width > 300
		ifTrue: [ |scrollPane|
				scrollPane := ScrollPane new.
				scrollPane scroller addMorph: valuesMorph.
				scrollPane width: 300.
				scrollPane color: Color transparent.
				scrollPane vScrollBarPolicy: #never.
				scrollPane alwaysShowHScrollBar.
				scrollPane scrollBarThickness: self scrollBarSize.
				scrollPane height: valuesMorph height + self scrollBarSize.
				scrollPane]
		ifFalse: [valuesMorph] 
