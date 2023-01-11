private - ui
selectLiveSpecimen: previousSpecimen then: uiThenBlock

	"This is somewhat feature-envy-ish, the representation of live specimen is leaking throughout
	the registry, example, and this UI..."
	BPSelectViaDropMorph new
		previousObject: previousSpecimen;
		then: [:specimen | 
			uiThenBlock value: (BPSpecimenReference new
				specimen: specimen;
				yourself)];
		openInWindow.