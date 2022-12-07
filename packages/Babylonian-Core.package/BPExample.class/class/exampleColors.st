constants
exampleColors
	
	"These are color brewer colors: https://colorbrewer2.org"
	^ #('a6cee3'
		 '1f78b4'
		 'b2df8a'
		 '33a02c'
		 'fb9a99'
		 'e31a1c'		
		 'fdbf6f'
		 'ff7f00'
		 '#993300'
		 'cab2d6'
		 '6a3d9a'
		'000000'
		)
			collect: [:colorHexString |
				Color fromString: colorHexString]