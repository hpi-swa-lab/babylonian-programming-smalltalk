private
filteredStack

	^ self stack reject: [:aStackEntry | self shouldBeFiltered: aStackEntry ]

	