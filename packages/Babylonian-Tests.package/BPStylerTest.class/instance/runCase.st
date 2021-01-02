as yet unclassified
runCase
	
	| previousValue |
	previousValue := BPStyler wantsSidebarAnnotations.
	[BPStyler wantsSidebarAnnotations: false.
	super runCase]
		ensure: [BPStyler wantsSidebarAnnotations: previousValue]