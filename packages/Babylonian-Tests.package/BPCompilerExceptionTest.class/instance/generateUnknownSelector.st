private
generateUnknownSelector

	| selector num |
	selector := 'yourself'.
	num := 0.
	[(Symbol lookup: selector, num) notNil] whileTrue: [num := num + 1].
	^ selector, num