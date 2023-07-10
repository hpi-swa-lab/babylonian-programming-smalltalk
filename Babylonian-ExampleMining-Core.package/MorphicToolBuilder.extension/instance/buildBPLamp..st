*Babylonian-ExampleMining-Core
buildBPLamp: aBPLampSpec

	| widget |
	widget := BPExampleMiningLampMorph new.

	widget
		model: aBPLampSpec model;
		lampOnSelector: aBPLampSpec lampOn;
		lampOffSelector: aBPLampSpec lampOff.

	self setFrame: aBPLampSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aBPLampSpec.
	parent ifNotNil:[self add: widget to: parent].

	^ widget