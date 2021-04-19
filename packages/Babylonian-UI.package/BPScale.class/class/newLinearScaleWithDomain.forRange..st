initialize-release
newLinearScaleWithDomain: aDomainInterval forRange: aRangeInterval
	
	^ self new
		domain: ({aDomainInterval start. aDomainInterval stop} min to: {aDomainInterval start. aDomainInterval stop} max);
		range: ({aRangeInterval start. aRangeInterval stop} min to: {aRangeInterval start. aRangeInterval stop} max);
		scaleBehavior: self linearScale;
		yourself.