as yet unclassified
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Callgraph Explorer';
		children: {
			callgraphModel getSpec		
				frame: (0@0 extent: 0.5@0.5);
				"doubleClick: #callgraphDoubleClick:;"
				yourself.
			aBuilder pluggableListSpec new
				frame: (0.5@0 corner: 1@0.5);
				autoDeselect: false;
				clearFilterAutomatically: false;
				filterableList: true;
				model: self;
				list: #getAnnotationListLabels;
				icon: #getAnnotationIcon:;
				doubleClick: #annotationPaneDoubleClick;
				getIndex: #getSelectedAnnotationIndex;
				setIndex: #setSelectedAnnotationIndex:;
				keyPress: #annotationKeyPressed:;
				yourself.
			aBuilder pluggableCodePaneSpec new
				frame: (0@0.5 corner: 1@1);
				stylerClass: BPStyler;
				model: self;
				getText: #getCodePaneText;
				yourself
		};
		yourself.
	
	^ aBuilder build: windowSpec