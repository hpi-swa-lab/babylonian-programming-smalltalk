initialization
initializeParts
	
	self 
		mountains: {
			BPMountain new
				color: Color darkGray;
				ratio: (1/3); 
				yourself. 
			BPMountain new
				color: Color lightGray;
				ratio: (1/4);
				yourself.};
		tree: BPTree new;
		sky: BPSky new.

	self sceneParts do: [:part |
		part extent: self extent].
	