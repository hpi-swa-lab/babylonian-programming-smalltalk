enumerating
do: aBlock between: start and: end
	
	self do: [:each | each == end ifTrue: [^ self] ifFalse: [aBlock value: each]] after: start