constants
barColorScheme
	
	^ #('4e7aa7'
		 'f28f2c'
		 'e1575a'
		 '76b7b2'
		 '59a14f'
		 'edca49'
		 'af7aa1'
		 'ff9da7'
		 '9c755f'
		 'bab0ab')
			collect: [:colorHexString |
				Color fromString: colorHexString]