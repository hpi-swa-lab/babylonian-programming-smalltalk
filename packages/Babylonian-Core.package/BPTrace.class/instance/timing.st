as yet unclassified
timing
	
	| list |
	list := OrderedCollection new.
	self probes keysAndValuesDo: [:probeId :values | 
		values do: [:value |
			list addLast: {probeId. value}]].
	list sort: [:a :b | a second time <= b second time].
	^ list