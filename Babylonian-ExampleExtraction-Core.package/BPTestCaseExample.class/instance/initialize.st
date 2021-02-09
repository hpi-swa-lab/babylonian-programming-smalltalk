initialize-release
initialize

	super initialize.
	
	self
		setUpScript: 'self setUpTestCase';
		tearDownScript: 'self tearDownTestCase'