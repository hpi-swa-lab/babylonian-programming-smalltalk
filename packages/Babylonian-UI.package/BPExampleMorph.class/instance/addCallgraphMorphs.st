callgraph
addCallgraphMorphs
	
	| sidebarButton |
	"self addMorphBack:  (TextMorph new
		color: Color black;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		readOnly: true;
		contents: '';
		name: #duration;
		yourself)."
		
	sidebarButton := IconicButton new.
	sidebarButton 
		labelGraphic: (BPIcons sidebarIcon scaledToSize: self iconSize * 0.8);
		name: #contextTrace;
		color: Color transparent;
		borderWidth: 0;
		extent: sidebarButton extent * 0.8.
	sidebarButton 
		actionSelector: #viewInSidebar;
		target: self.
	self addMorphBack: sidebarButton.
	^ sidebarButton	
		
	