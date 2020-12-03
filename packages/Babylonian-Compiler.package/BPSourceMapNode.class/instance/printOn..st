printing
printOn: aStream

	aStream 
		<< self ruleName;
		<< '(';
		print: self interval;
		<< ') '