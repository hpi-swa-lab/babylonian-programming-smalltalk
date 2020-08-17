source map generating
createSourceMapFor: aNode

	self sourceMap: ((1 to: aNode interval length) collect: [:i | OrderedCollection new]).
	self ohmNodeToSourceMapNode: IdentityDictionary new.
	
	[self value: aNode.
	^ self sourceMap] 
		ensure: [
			self sourceMap: nil.
			self ohmNodeToSourceMapNode: nil.] 