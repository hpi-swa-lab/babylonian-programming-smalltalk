private
extractEndOfMethodHeader

	^ [:parseResult | parseResult cst children first interval end]