instance creation
newFrom: aMemento

	^ self new
		contextIdentityHash: aMemento first;
		receiverIdentityHash: aMemento second;
		selector: aMemento third;
		methodClass: aMemento fourth