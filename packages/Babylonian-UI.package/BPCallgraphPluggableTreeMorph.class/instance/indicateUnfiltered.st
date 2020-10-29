filtering
indicateUnfiltered
	
	super indicateUnfiltered.
	scroller submorphsDo: [:m | m removeFilter]