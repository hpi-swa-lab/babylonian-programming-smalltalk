as yet unclassified
keyPressed: aChar
	
	"only called when a modifier key is pressed as well -> otherwise the list is filtered and this method not called"
	aChar = $b ifTrue: [(self getAnnotations at: self getIndex) doBrowse]