private - ui
checkAndConvertValuesMorphIfNecessary: valuesMorph
	
	|scrollPane|
	scrollPane := ScrollPane new.
	scrollPane scroller addMorph: valuesMorph.
	scrollPane width: 300.
	scrollPane color: Color transparent.
	scrollPane vScrollBarPolicy: #never.
	scrollPane showHScrollBarOnlyWhenNeeded.
	scrollPane scrollBarThickness: self scrollBarSize.
	scrollPane height: valuesMorph height + self scrollBarSize.
	^ scrollPane