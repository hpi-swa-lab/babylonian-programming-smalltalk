changing page
isSearchWords: aString
	
	| asUrl |
	asUrl := "<bpProbe id: 8912865>"aString asUrl"</bpProbe>".
	
	(("<bpProbe id: 2602886>"self isUrl: aString"</bpProbe>") or: (self isInternBrowserUrl: aString)) ifTrue: [^false].
	
	(self isLocalhostAdress: aString) ifTrue: [^false].
	
	^ ('*.##*' match: aString) not 