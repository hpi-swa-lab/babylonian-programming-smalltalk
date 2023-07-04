ui constants
fillColor

	^ ((ScrollPane basicNew userInterfaceTheme color ifNil: [
		Color peach lighter]) adjustBrightness: -0.05)