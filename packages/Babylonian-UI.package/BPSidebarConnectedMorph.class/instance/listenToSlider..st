annotation morph
listenToSlider: aSlider
	
	| slider |
	slider := aSlider.
	aSlider class == self class ifTrue: ["unpack the slider"
		slider := aSlider connectedMorph].
	^ self connectedMorph listenToSlider: slider