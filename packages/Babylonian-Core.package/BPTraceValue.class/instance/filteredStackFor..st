private
filteredStackFor: aStack

	^ aStack reject: [:aStackEntry | self shouldBeFiltered: aStackEntry ]

	