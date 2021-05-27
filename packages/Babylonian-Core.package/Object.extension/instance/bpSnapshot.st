*Babylonian-Core
bpSnapshot
	
	<bpRelevantMethod>
	"This is a copy of veryDeepCopy which skips fixDependents as it is currently of minor importance 
	and takes a lot of time."

	| copier new |
	copier := DeepCopier new: self initialDeepCopierSize.
	new := self veryDeepCopyWith: copier.
	copier mapUniClasses.
	copier references associationsDo: [:assoc | 
		assoc value veryDeepFixupWith: copier].
	^ new