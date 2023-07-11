searching
isInSamePackageAsMethod: aClass

	^aClass packageInfo packageName includesSubstring:
	   ((self method methodClass packageInfo packageName splitBy: '-') first)