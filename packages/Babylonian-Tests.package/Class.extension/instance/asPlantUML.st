*Babylonian-Tests
asPlantUML
	<exampleNamed: 'example' self: 'BPExample'>
	<exampleNamed: 'trace value' self: 'BPTraceValue'>
	| result template vars methods |
	result := ''.
	template := 'class {1} \{
{2}
	--
{3}
\}'. 
	
	vars := (self instVarNames collect: [:n | String tab , n]) joinSeparatedBy: String crlf.
	methods := ((Pragma allNamed: #bpRelevantMethod in: self) 
					collect: [:p | String tab , p method selector])
					 joinSeparatedBy: String crlf.
	
	result := template format: {self name . vars . methods}.

	^ "<bpProbe id: 7542529 expression: [:aResult | aResult]>"result"</bpProbe>" 