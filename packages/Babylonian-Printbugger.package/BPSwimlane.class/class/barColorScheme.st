constants
barColorScheme
	
	^ #('f94144'
		 '277da1'
		 'f3722c'
		 '577590'
		 'f8961e'
		 '4d908e'
		 'f9844a'
		 '43aa8b'
		 'f9c74f'
		 '90be6d')
			collect: [:colorHexString |
				Color fromString: colorHexString]