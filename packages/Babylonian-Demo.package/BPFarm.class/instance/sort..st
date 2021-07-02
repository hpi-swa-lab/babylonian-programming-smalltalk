as yet unclassified
sort: anArray
	
	| temp |
	"<bpProbe id: 8534941 expression: [:result | result collect: [:a | a name]]>"anArray"</bpProbe>" size to: 1 by: -1 do: [:n |
		 1 to: n-1 do: [:i |
			((anArray at: i) name) > ((anArray at: i+1) name) ifTrue: [
				temp := anArray at: i.
				anArray at: i put: (anArray at: i+1).
				anArray at: i+1 put: temp]]].
	^ "<bpProbe id: 2610216 expression: [:result | result collect: [:a | a name]]>"anArray"</bpProbe>"