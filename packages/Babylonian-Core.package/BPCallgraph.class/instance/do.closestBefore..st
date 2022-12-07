enumerating
do: aBlock closestBefore: entry
	
	| elements |
	self flag: #todo. "This is slow"
	elements := OrderedCollection new.
	self do: [:each | each == entry 
		ifTrue: [^ elements do: [:element | aBlock value: element]] 
		ifFalse: [elements addLast: each]].
	