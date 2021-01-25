private - building
deserializeArguments: anArgumentList

	^ (anArgumentList collect: [:arg | self nodeToValue: arg]) asArray