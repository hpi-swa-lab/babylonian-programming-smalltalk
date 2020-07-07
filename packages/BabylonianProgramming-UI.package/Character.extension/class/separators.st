*BabylonianProgramming-UI
separators
	"Answer a collection of the standard ASCII separator characters."

	^ #(1 "start of header"
		32 "space"
		13 "cr"
		9 "tab"
		10 "line feed"
		12 "form feed")
		collect: [:v | Character value: v] as: String