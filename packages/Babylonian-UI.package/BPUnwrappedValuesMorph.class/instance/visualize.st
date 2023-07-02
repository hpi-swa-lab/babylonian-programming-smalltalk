ui
visualize

	super visualize.
	
	"The following is necessary to determine the actual width of the morph
	after it wrapped around its submorphs"
	self layoutChanged; fullBounds.