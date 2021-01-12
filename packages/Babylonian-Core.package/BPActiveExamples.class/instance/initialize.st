initialize-release
initialize
	
	super initialize.
	examples := WeakIdentityKeyDictionary new.
	mutex := Mutex new.