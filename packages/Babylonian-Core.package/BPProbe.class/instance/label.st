accessing
label
	
	"stores a name or message of a probe which the BPProbeLog uses to print along a probe's values"
	^ label ifNil: [super label]