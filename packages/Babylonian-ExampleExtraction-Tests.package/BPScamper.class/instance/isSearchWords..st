changing page
isSearchWords: aString
	<exampleNamed: 'some example 2' active: true self: #(#object #'e88a3438-e818-dc4b-b59e-07fd4addf7b0') with: #(#object #'bfd98292-921b-a943-99db-47f7fe31ea81')>
	| asUrl |
	asUrl := "<bpProbe id: 8912865>"aString asUrl"</bpProbe>".
	
	(("<bpProbe id: 2602886>"self isUrl: aString"</bpProbe>") or: (self isInternBrowserUrl: aString)) ifTrue: [^false].
	
	(self isLocalhostAdress: aString) ifTrue: [^false].
	
	^ ('*.##*' match: aString) not 