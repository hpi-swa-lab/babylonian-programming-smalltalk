what to show
showingUnannotatedSourceString

	^ (self showingUnannotated
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'unannotated'