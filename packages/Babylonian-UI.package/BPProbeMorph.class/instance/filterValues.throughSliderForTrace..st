private
filterValues: values throughSliderForTrace: aTrace
	
	|  filterContext |
	sliderForFiltering ifNil: [^ values].
	filterContext := sliderForFiltering selectedContextFor: aTrace example.
	^ filterContext 
		ifNil: [values]
		ifNotNil: [self haltOnce. values select: [:value | 
			value stack includes: filterContext]]
	