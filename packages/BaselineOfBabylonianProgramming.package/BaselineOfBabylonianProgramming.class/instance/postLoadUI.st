baseline
postLoadUI
	
	"To reinitialize the CharacterSets to include SOH as a separator"
	CharacterSet cleanUp: false.
	
	(Smalltalk at: #BPEmojis) initialize.