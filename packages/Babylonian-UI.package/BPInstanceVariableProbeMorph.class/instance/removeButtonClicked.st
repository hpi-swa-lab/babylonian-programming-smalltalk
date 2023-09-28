as yet unclassified
removeButtonClicked

	"LSP violation here - but otherwise the removal of the morph won't happen... -jb"
	BPClassNameToInstanceProbes value removeProbe: self annotation.
	super removeButtonClicked.
	
	
	