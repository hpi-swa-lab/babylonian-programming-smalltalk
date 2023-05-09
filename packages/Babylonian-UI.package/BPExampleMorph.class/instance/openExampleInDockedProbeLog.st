private
openExampleInDockedProbeLog

	(self containingBrowser sidePane allMorphs detect: [:aSubmorph | 
		aSubmorph isKindOf: BPProbeLog]) addNewColumnFrontFor: self example