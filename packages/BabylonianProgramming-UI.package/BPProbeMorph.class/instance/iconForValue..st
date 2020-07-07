private - ui
iconForValue: aValue

	^ aValue isMorph
		ifTrue: [(aValue imageForm scaledToSize: self iconSize * 4) asMorph]
		ifFalse: [((BPEmojis emojiFor: aValue) scaledToSize: self iconSize * 1.1) asMorph].