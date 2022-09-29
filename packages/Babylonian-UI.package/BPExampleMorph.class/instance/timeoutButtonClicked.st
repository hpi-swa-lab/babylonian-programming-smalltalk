actions
timeoutButtonClicked
	^ ToolBuilder default open: (BPExampleSetTimeoutEditor new
					example: self example;
					yourself)