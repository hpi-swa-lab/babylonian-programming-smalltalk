example methods
methodSettingInstanceVars

	'hello world'.
	self foo;
		foo2.
	foo2 := 1.
	foo := 2.
	self foo2: 3.
	self foo: 4.
	[ |var| 
		var := 5.
		foo := 6.
		[ |foo foo2| 
			foo := 7.
			foo2 := 8.]] 
	