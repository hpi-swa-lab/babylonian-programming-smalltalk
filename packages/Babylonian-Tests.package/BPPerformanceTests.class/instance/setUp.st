tests
setUp

	SystemChangeNotifier uniqueInstance doSilently: [
		self class compile: self fixtureMethodSource].
	
	browser := BPBrowser new 
			setClass: self class selector: self fixtureMethodSelector; 
			selectedMessage; 
			yourself.
	browserWindow := ToolBuilder build: browser.	