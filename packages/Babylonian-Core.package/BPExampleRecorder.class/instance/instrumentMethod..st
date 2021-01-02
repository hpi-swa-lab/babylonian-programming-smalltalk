instrumenting
instrumentMethod: aMethod
	
	| instrumentationSource |
	instrumentationSource := self instrumentedSourceFor: aMethod.
	SystemChangeNotifier uniqueInstance doSilently: [
		aMethod methodClass compile: instrumentationSource].
	