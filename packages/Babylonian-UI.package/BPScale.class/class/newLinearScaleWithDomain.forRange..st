initialize-release
newLinearScaleWithDomain: aDomainInterval forRange: aRangeInterval
	
	
	^ self new
		domain: aDomainInterval;
		range: aRangeInterval;
		scaleBehavior: self linearScale;
		yourself.