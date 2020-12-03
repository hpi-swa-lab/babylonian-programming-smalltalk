private - ui
checkAndConvertValuesMorphIfNecessary: valuesMorph
	
	^ ScrollPane new
		scroller addMorph: valuesMorph;
		width: 300;
		color: Color transparent;
		vScrollBarPolicy: #never;
		showHScrollBarOnlyWhenNeeded;
		scrollBarThickness: self scrollBarSize;
		height: valuesMorph height + self scrollBarSize;
		yourself