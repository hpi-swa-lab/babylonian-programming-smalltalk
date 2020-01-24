*BabylonianProgramming-UI
methodReference 
	"Copied from Browser>>methodReference"
	| cls sel |
	cls := self selectedClassOrMetaClass.
	sel := self selectedMessageName.
	(cls isNil or: [sel isNil]) ifTrue: [^ nil].
	^ MethodReference class: cls selector: sel