initialize-release
initializeSidePaneFrom: aBrowser

	sidePane := (aBrowser paneMorphs select: [:morph | morph externalName = self sidePaneNameSymbol asString]) first.