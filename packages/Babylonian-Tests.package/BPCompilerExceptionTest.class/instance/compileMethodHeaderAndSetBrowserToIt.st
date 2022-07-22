private
compileMethodHeaderAndSetBrowserToIt
	
	text := 'someMethod\\	' withCRs asText.
	self compile: text.
	browser setSelector: #someMethod.