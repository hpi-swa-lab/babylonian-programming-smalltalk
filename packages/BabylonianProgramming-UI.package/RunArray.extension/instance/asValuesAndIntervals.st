*BabylonianProgramming-UI
asValuesAndIntervals

	| interval result |
	result := OrderedDictionary new.
	1 to: self size do: [:i |
		(self at: i) do: [:value |
			interval := result at: value ifAbsentPut: (i to: i).
			result at: value put: (interval start to: i)]].
	^ result
	