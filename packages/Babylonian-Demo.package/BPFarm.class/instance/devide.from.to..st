as yet unclassified
devide: anArray from: aLeftIndex to: aRightIndex
	
	| il ir pivot temp |
	"split"
      il := aLeftIndex.
      ir := aRightIndex - 1.
	pivot := (anArray at: (aRightIndex)) name.
	
	[il < ir] whileTrue: [
		[(il < aRightIndex) and: ((anArray at: il) name < pivot)] whileTrue: [il := il + 1.].
		[(ir > aLeftIndex) and: ((anArray at: ir) name > pivot)] whileTrue: [ir := ir - 1.].
		(il < ir) ifTrue: [
			" swap "
			temp := anArray at: il.
			anArray at: il put: (anArray at: ir).
			anArray at: ir put: temp]].
	^ {anArray. il} asCollection