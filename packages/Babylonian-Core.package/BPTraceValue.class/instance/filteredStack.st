private
filteredStack

	^ self stack reject: [:aStackEntry | self shouldBeIgnored: aStackEntry ]

	