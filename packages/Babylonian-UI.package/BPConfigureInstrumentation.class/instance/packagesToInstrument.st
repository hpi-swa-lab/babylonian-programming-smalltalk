choosing packages
packagesToInstrument

	^ PackagesToInstrument ifNil: [PackagesToInstrument := OrderedCollection new]