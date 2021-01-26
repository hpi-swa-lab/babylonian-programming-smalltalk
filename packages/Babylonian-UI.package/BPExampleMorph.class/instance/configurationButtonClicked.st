actions
configurationButtonClicked
	
	^ ToolBuilder default 
		open: (BPExampleConfigurationEditor new
					example: self example;
					requestor: self;
					yourself)