initialize-release
initialize

	super initialize.
	self id: (ThreadSafeRandom nextInt: 10000000).
	self tag: ''.
	otherInformation := Dictionary new.