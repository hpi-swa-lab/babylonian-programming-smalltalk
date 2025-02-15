private
allBabylonianInternalClasses
		^ #('Babylonian-Core'  'Babylonian-Compiler' 'Babylonian-UI' 'Babylonian-ProbeLog') 
				inject: OrderedCollection new 
				into: [:theClasses :aPackage | 
					theClasses, (PackageOrganizer default packageNamed: aPackage 
							ifPresent: [:thePackage | thePackage classes] 
							ifAbsent: [#()])].   