private
allBabylonianInternalClasses
		^ (PackageOrganizer default packageNamed: 'Babylonian-Core' 
			ifPresent: [:thePackage | thePackage classes] ifAbsent: [#()]),
		(PackageOrganizer default packageNamed: 'Babylonian-Compiler' 
			ifPresent: [:thePackage | thePackage classes] ifAbsent: [#()]),
		(PackageOrganizer default packageNamed: 'Babylonian-UI' 
			ifPresent: [:thePackage | thePackage classes] ifAbsent: [#()]),	
		(PackageOrganizer default packageNamed: 'Babylonian-Printbugger' 
			ifPresent: [:thePackage | thePackage classes] ifAbsent: [#()])