private - ui
selectLiveSpecimenThen: uiThenBlock

	"This is somewhat feature-envy-ish, the representation of live specimen is leaking throughout
	the registry, example, and this UI..."
	BPSelectViaDropMorph new
		then: [:specimen | | reference |
			reference := BPActiveSpecimenRegistry value storeSpecimen: specimen.
			uiThenBlock value: reference];
		openInWindow