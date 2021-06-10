updating
update: anAspect with: aTrace
	
	super update: anAspect with:aTrace.
	
	"Pass the signal through so that other objects may only depent on me but not my traceInformation"
	self changed: anAspect with: aTrace.