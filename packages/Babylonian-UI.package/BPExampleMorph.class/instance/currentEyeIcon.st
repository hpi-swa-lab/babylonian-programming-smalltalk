accessing
currentEyeIcon

	^ self areAnnotationsHidden
		ifTrue: [BPIcons eyeOffIcon scaledToSize: self iconSize]
		ifFalse: [BPIcons eyeIcon scaledToSize: self iconSize] 