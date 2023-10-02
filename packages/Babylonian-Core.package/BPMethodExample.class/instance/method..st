accessing
method: aCompiledMethod

	super method: aCompiledMethod.
	"Force cache invalidation"
	self argumentNames.