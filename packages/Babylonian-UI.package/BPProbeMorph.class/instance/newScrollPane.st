private - ui
newScrollPane
	
	"This weird morph hierarchy pushes the scrollpane down far enough 
	to balance out the height added by the scroll bar thereby putting the 
	text in the scroll pan on the same baseline as the label text in the rest 
	of the annotation morph"
	| blocker scrollPane wrapper |
	wrapper := Morph new
		name: #scrollWrapper;
		color: Color transparent;
		borderWidth: 0;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself.
	
	blocker := Morph new
		color: Color transparent;
		borderWidth: 0;
		height: self scrollBarSize;
		yourself.
		
	scrollPane := ScrollPane new
		name: #scrollPane;
		color: Color transparent;
		borderWidth: 0;
		hResizing: #spaceFill;
		vScrollBarPolicy: #never;
		showHScrollBarOnlyWhenNeeded;
		scrollBarThickness: self scrollBarSize;
		height: 20;	
		yourself.
		
	BPStyler 
		withSidebarAnnotations: [scrollPane width: 300]
		without: [
			scrollPane 
				hResizing: #rigid;
				width: 500].
		
	^ wrapper 
		addMorphBack: blocker;
		addMorphBack: scrollPane;
		yourself