private - filtering
filterValues: values throughSliderForTrace: aTrace
	
	| filterContexts |
	slidersForFiltering ifEmpty: [^ values].
	filterContexts := (slidersForFiltering 
		collect: [:slider | slider selectedContextFor: aTrace example])
		reject: [:context | context isNil].
	^ filterContexts 
		ifEmpty: [values]
		ifNotEmpty: [values select: [:value | 
			filterContexts allSatisfy: [:filterContext | value stack includes: filterContext]]]
	