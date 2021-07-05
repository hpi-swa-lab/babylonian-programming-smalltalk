as yet unclassified
sort: anArray
	
	| temp |
	anArray size to: 1 by: -1 do: [:n |
		 1 to: n-1 do: [:i |
			((anArray at: i) name) > ((anArray at: i+1) name) ifTrue: [
				temp := anArray at: i.
				anArray at: i put: (anArray at: i+1).
				anArray at: i put: temp]]].
	^ anArray