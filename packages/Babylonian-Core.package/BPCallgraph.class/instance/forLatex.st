printing
forLatex
	
	^ String streamContents: [:s |
		s nextPutAll: '
\begin{forest}
	tracing tree,
	[
'.
	
		self roots do: [:entry | entry printForLatexOn: s].
	
		s nextPutAll: '			
	]
\end{forest}']