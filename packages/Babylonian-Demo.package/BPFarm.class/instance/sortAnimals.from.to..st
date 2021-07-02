as yet unclassified
sortAnimals: anArray from: aLeftIndex to: aRightIndex
	
	"quicksort"
	| devider array result |
	(aLeftIndex < aRightIndex) ifTrue: [
		result := self devide: anArray from: aLeftIndex to: aRightIndex.
		array := result first.
		devider := result second.
		"sort"
	      self sortAnimals: anArray from: aLeftIndex to: (devider - 1).
	      self sortAnimals: anArray from: (devider + 1) to: aRightIndex].
		^ anArray.