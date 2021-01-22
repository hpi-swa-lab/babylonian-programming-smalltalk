class initialization
initialize
	
	"BPBrowser initialize"

	"rare but correct for browsers"
	super initialize.
	self environment at: #TheWorldMenu ifPresent: [:menu |
		(menu respondsTo: #registerOpenCommand:) ifTrue: [
			menu unregisterOpenCommand: 'Babylonian Call Graph Browser'.
			menu registerOpenCommand: {'Babylonian Call Graph Browser'. {self. #open}}]].
	
	Smalltalk addToStartUpList: self.