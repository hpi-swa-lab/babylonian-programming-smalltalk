toolbuilder
buildWith: aBuilder
	
	| visualizationTypeHeight buttonBarHeight |
	visualizationTypeHeight := self getVisualizationTypes size * 15 + 3.
	buttonBarHeight := 23.
	
	^ aBuilder pluggablePanelSpec new
		wantsResizeHandles: true;
		children: {
			(self buildExampleListWith: aBuilder)
				frame: (0@0 corner: 1@0.1);
				yourself.
			(self buildVisualizationTypeWith: aBuilder)
				frame:  (LayoutFrame
					fractions: (0@0.1 corner: 1@0.1)
					offsets: (0@0 corner: 0@visualizationTypeHeight));
				yourself.
			(self buildVisualizationWith: aBuilder)
				frame: (LayoutFrame
					fractions: (0@0.1 corner: 1@1)
					offsets: (0@visualizationTypeHeight corner: 0@(buttonBarHeight * -1)));
				yourself.
			(self buildButtonBarWith: aBuilder)
				frame: (LayoutFrame
					fractions: (0@1 corner: 1@1)
					offsets: (0@(buttonBarHeight * -1) corner: 0@0));
				yourself};
		yourself