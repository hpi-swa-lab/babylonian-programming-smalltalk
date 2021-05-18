toolbuilder
buttonPaneFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 0 offset: self buttonHeight * 2