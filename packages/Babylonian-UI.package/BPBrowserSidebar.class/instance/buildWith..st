as yet unclassified
buildWith: aBuilder
	
	| visualizationTypeHeight |
	visualizationTypeHeight := self getVisualizationTypes size * 16 + 2.
	
	^ aBuilder pluggablePanelSpec new
		wantsResizeHandles: true;
		children: {
			(self buildExampleListWith: aBuilder)
				frame: (0@0 corner: 1@0.2);
				yourself.
			(self buildVisualizationTypeWith: aBuilder)
				frame:  (LayoutFrame
					fractions: (0@0.2 corner: 1@0.2)
					offsets: (0@0 corner: 0@visualizationTypeHeight));
				yourself.
			(self buildVisualizationWith: aBuilder)
				frame: (LayoutFrame
					fractions: (0@0.2 corner: 1@1)
					offsets: (0@visualizationTypeHeight corner: 0@0));
				yourself};
		yourself