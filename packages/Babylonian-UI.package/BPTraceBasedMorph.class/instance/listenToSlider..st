private - filtering
listenToSlider: aSliderMorph
	

	aSliderMorph == self ifTrue: [^ self].
	slidersForFiltering add: aSliderMorph.
	aSliderMorph addDependent: self