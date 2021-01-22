*Babylonian-Core
bpSnapshot
	
	"This is a copy of veryDeepCopy which skips fixDependents as it is currently of minor importance 
	and takes a lot of time."

	| copier new |
	BPByteCodeCallgraphTracer deactivateDuring: [
		copier := DeepCopier new: self initialDeepCopierSize.
		new := self veryDeepCopyWith: copier.
		copier mapUniClasses.
		copier references associationsDo: [:assoc | 
			assoc value veryDeepFixupWith: copier].
		^ new]