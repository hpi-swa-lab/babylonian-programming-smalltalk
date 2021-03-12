as yet unclassified
update: anAspect
	
	| expandedEntryIndices scrollerOffset |
	
	"record expanded entries"	
	expandedEntryIndices := (scroller submorphs 
		withIndexCollect: [:m :i | m isExpanded ifTrue: [i] ifFalse: [nil]])
		reject: #isNil.
	
	"record scroller position"
	scrollerOffset := scroller offset copy.
	
	super update: anAspect.
 
	"restore expanded entries"	
	"the repeated retrieval of submorphs is important, as by expanding
	entries, we change the list"
	[expandedEntryIndices do: [:index |
		(scroller submorphs at: index ifAbsent: ["nothing left to be done"^ self]) expand]]
			ensure: [
				self 
					adjustSubmorphPositions;
					updateLayout.
				"restore scroll"
				scroller offset: scrollerOffset].

	