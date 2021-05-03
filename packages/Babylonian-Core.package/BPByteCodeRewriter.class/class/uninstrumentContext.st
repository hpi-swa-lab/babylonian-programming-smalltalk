5 - teardown
uninstrumentContext
	
	self uninstallWrapper: #swapSender:.
	self uninstallWrapper: #terminateTo:.
	self uninstallWrapper: #privSender: