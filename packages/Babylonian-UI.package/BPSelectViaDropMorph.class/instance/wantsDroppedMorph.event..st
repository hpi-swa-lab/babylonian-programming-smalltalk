dropping/grabbing
wantsDroppedMorph: aMorph event: aDropEvent

	^ (super wantsDroppedMorph: aMorph event: aDropEvent) and: [
		aMorph respondsTo: #passenger]