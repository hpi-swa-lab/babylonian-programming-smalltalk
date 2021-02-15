geometry
extent: anExtent
	
	self mountains do: [:mountain |
		mountain extent: anExtent].
	self tree extent: anExtent.
	
	super extent: anExtent.