toolbuilder
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggablePanelSpec new
		frame: (0@0 corner: 1@1);
		wantsResizeHandles: true;
		children: {
			(aBuilder pluggableListSpec new
				frame: (0@0 corner: 1@0.3);
				autoDeselect: false;
				clearFilterAutomatically: false;
				filterableList: true;
				model: self;
				list: #topLabels;
				icon: #topIcon:;
				doubleClick: #topDoubleClick;
				getIndex: #topIndex;
				setIndex: #topIndex:;
				keyPress: #topKeyPress:;
				menu: #topMenu:;
				yourself).
			(aBuilder pluggableMultiColumnListSpec new
				frame: (0@0.3 corner: 1@1);
				autoDeselect: false;
				clearFilterAutomatically: false;
				filterableList: true;
				model: self;
				"multi column list options"
				itemPaddings: {0@0 corner: 5@0};
				columnResizings: #(shrinkWrap);
				
				list: #bottomLabels;
				icon: #bottomIconRow:column:;
				doubleClick: #bottomDoubleClick;
				getIndex: #bottomIndex;
				setIndex: #bottomIndex:;
				keyPress: #bottomKeyPress:;
				menu: #bottomMenu:;
				yourself)};
		yourself)