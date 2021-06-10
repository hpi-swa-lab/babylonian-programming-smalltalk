class initialization
initialize
	
	"BPBrowser initialize"

	"rare but correct for browsers"
	super initialize.
	self environment at: #TheWorldMenu ifPresent: [:menu |
		(menu respondsTo: #registerOpenCommand:) ifTrue: [
			menu unregisterOpenCommand: 'Babylonian Browser'.
			menu registerOpenCommand: {'Babylonian Browser'. {self. #open}}]].
	
	Smalltalk addToStartUpList: self.