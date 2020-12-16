private - ui
checkAndConvertValuesMorphIfNecessary: valuesMorph
	
	^ ScrollPane new
		scroller addMorph: valuesMorph;
		hResizing: #spaceFill;
		color: Color transparent;
		vScrollBarPolicy: #never;
		showHScrollBarOnlyWhenNeeded;
		scrollBarThickness: self scrollBarSize;
		height: valuesMorph height + self scrollBarSize;
		yourself