private
backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult

	| instrumentedMethod newCode |
	newCode := self rewriteToSource: parseResult.
	SystemChangeNotifier uniqueInstance doSilently: [instrumentedMethod := aCue getClass compile: newCode].
	