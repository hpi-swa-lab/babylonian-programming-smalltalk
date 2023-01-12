accessing
actualExampleList
	"We misuse example list for example instance methods --pre"
	^ exampleList ifNil: [
		exampleList := self selectedPackage 
							ifNotNil: [:aPackage | aPackage methods select: [:aMethod | aMethod compiledMethod isExampleInstanceMethod]]
							ifNil: [#()].
		exampleList := exampleList sorted: [:aMethod | aMethod selector] ascending]