actions
assertResultButtonClicked

	^ ToolBuilder default open: (BPExampleAssertResultEditor new
					example: self example;
					yourself)