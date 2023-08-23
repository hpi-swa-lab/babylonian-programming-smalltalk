*Babylonian-Compiler
hash
	"see #="
	
	^ (self basicLayers hash bitXor: self selector hash) bitXor: self class name hash