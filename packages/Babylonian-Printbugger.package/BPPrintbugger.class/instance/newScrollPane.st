private -ui 
newScrollPane
	
	^ ScrollPane new
		name: #scrollPane;
		color: Color palePeach;
		borderWidth: 0;
		hResizing: #spaceFill;
		showVScrollBarOnlyWhenNeeded;
		showHScrollBarOnlyWhenNeeded;
		yourself.