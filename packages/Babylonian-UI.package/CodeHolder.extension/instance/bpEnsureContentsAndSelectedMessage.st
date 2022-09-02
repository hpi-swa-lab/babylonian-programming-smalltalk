*Babylonian-UI-private
bpEnsureContentsAndSelectedMessage

	"Workaround - When a window is collapsed the cached state of a 
	CodeHolder is released. This means that the currentCompiledMethod
	will be nil. To force a complete recomputation of the cache, we also
	have to remove the cached contents."
	contents := nil.
	self selectedMessage.