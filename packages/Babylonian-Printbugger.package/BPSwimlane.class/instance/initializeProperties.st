initialization
initializeProperties
	
	^ self color: Color white;
			borderColor: Color transparent;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			changeTableLayout;
			listDirection: #topToBottom;
			wrapCentering: #center;
			cellPositioning: #topLeft;
			layoutInset: 4@8;
			yourself.
				