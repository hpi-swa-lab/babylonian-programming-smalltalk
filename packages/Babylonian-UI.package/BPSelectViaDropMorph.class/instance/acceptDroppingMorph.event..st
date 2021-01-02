dropping/grabbing
acceptDroppingMorph: aTransferMorph event: evt
	"We assume this to be some sort of TransferMorph due to our previous selection"
	
	self then value: aTransferMorph passenger.
	self isInSystemWindow ifTrue: [self owner closeBoxHit].