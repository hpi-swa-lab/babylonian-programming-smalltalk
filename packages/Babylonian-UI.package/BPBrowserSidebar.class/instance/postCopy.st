copying
postCopy
	
	visualization := visualization copy.
	visualization breakDependents.
	self flag: #todo. "breakDependents is no longer needed in Squeak 6.0"