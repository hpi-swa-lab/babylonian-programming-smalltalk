private -ui 
newScrollPane

	^ ScrollPane new
		name: #scrollPane;
		color: ScrollPane basicNew userInterfaceTheme color;
		borderWidth: 0;
		hResizing: #spaceFill;
		showVScrollBarOnlyWhenNeeded;
		showHScrollBarOnlyWhenNeeded;
		yourself.