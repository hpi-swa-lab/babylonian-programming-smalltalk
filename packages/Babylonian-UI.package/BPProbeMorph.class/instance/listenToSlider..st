accessing
listenToSlider: aSliderMorph
	

	sliderForFiltering ifNotNil: [sliderForFiltering removeDependent: self].
	sliderForFiltering := aSliderMorph.
	aSliderMorph addDependent: self.