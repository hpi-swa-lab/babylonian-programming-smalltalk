private
standardDeviation: aCollection

	| avg sample sum |
	avg := aCollection average.
	sample := aCollection anyOne.
	sum := aCollection inject: sample into: [ :accum :each | accum + (each - avg) squared ].
	sum := sum - sample.
	^ ((sum / (aCollection size - 1)) sqrt) asScaledDecimal roundTo: 0.01