as yet unclassified
testGenerator
	
	[
		BPByteCodeRewriter 
			setup; 
			instrumentClass: Generator; 
			instrumentClass: Generator class; 
			enableTracingForClass: Generator;
			enableTracingForClass: Generator class.

		self assertBlock: [| generator |
			generator := Generator on: [:g | {2 . 3} do: [:prime | g yield: prime]].
			[generator atEnd] whileFalse: [generator next]] generatesTrace: '
Generator class >> on: ctx: 1
	Generator >> initializeOn: ctx: 1
		Generator >> reset ctx: 1
			Generator >> reset [1] ctx: 1
				Generator >> fork ctx: 1
					Generator >> yield: ctx: 1
						Generator >> nextPut: ctx: 1
							--------- CONTEXT SENDER CHANGED ---------
						^ Generator >> nextPut: ctx: 1
			|> CONTINUING HERE
		^ Generator >> reset ctx: 1
	^ Generator >> initializeOn: ctx: 1
^ Generator class >> on: ctx: 1
Generator >> atEnd ctx: 1
^ Generator >> atEnd ctx: 1
Generator >> next ctx: 1
	Generator >> atEnd ctx: 2
	^ Generator >> atEnd ctx: 2
	--------- CONTEXT SENDER CHANGED (NOT IN CHAIN) ---------
^ Generator >> next ctx: 1
		|> CONTINUING HERE
	^ Generator >> yield: ctx: 1
	Generator >> yield: ctx: 2
		Generator >> nextPut: ctx: 2
			--------- CONTEXT SENDER CHANGED ---------
		^ Generator >> nextPut: ctx: 2
|> CONTINUING HERE
Generator >> atEnd ctx: 3
^ Generator >> atEnd ctx: 3
Generator >> next ctx: 2
	Generator >> atEnd ctx: 4
	^ Generator >> atEnd ctx: 4
	--------- CONTEXT SENDER CHANGED (NOT IN CHAIN) ---------
^ Generator >> next ctx: 2
		|> CONTINUING HERE
	^ Generator >> yield: ctx: 2
	--------- CONTEXT SENDER CHANGED ---------
^ Generator >> fork ctx: 1
|> CONTINUING HERE
Generator >> atEnd ctx: 5
^ Generator >> atEnd ctx: 5'
	] ensure: [
	BPByteCodeRewriter uninstrumentClass: Generator.
	BPByteCodeRewriter uninstrumentClass: Generator class]