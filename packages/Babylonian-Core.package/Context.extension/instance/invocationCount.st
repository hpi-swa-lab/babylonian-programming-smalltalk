*Babylonian-Core-Callgraph-ByteCode
invocationCount
	
	"return the invocation count of the method that corresponds to this context. If this is a closure context, return the invocation count of the method this closure was created in (self home)."
	| home |
	home := self home.
	^ home tempAt: home numTemps 