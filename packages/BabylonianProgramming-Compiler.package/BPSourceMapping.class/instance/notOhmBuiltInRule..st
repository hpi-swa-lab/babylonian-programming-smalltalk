testing
notOhmBuiltInRule: aRuleName

	^ (OhmBuiltInRules ownAndInheritedRules keys includes: aRuleName) not