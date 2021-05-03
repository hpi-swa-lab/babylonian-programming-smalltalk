enumerating
do: aBlock after: entry
	
	| last |
	"iterate children"
	entry children do: [:child | self do: aBlock entry: child].
	
	"move up my parents and iterate children along the way"
	last := entry.
	entry path allButLast reversed do: [:each |
		each children 
			from: (each children indexOf: last) + 1
			to: each children size
			do: [:child | self do: aBlock entry: child].
		last := each].

	"iterate children of next root element"
	roots 
		from: (roots indexOf: entry root) + 1
		to: roots size 
		do: [:root | self do: aBlock entry: root]