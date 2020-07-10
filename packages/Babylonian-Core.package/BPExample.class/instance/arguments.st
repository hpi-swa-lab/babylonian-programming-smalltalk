accessing
arguments

	^ argumentScripts collect: [:script | Compiler evaluate: script]