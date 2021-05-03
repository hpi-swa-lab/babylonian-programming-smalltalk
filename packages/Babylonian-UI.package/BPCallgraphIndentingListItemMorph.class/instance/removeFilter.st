filtering
removeFilter
	
	self flag: #todo. "Actually use the currentFilter for highlighting. See LazyListMorph >> #getFilterOffsets, LazyListMorph >> #drawOn:"
	currentFilter := nil