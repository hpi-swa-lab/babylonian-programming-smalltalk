private - ui
newScrollPane

	^ ScrollPane new
		width: 300;
		color: Color transparent;
		vScrollBarPolicy: #never;
		showHScrollBarOnlyWhenNeeded;
		scrollBarThickness: self scrollBarSize;
		height: 20;
		name: #scrollPane;
		yourself.