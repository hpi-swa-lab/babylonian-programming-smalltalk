stepping
step
	
	BPStyler withoutSidebarAnnotations: [
		self width: (collapsedExamplesMorph submorphs 
			ifEmpty: [#(0)]
			ifNotEmpty: [:sm | sm collect: [:m | m width + 6]]) sum]