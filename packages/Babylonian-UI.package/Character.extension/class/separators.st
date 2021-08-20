*Babylonian-UI-instance creation-override
separators
	"Answer a collection of space-like separator characters.
	Note that we do not consider spaces in >8bit code points yet.
	"

	^ #(1 "start of header"
		9 "tab"
		10 "line feed"
		12 "form feed"
		13 "cr"
		32 "space"
		160 "non-breaking space, see Unicode Z general category")
		collect: [:v | Character value: v] as: String
" To be considered:
16r1680 OGHAM SPACE MARK
16r2000 EN QUAD
16r2001 EM QUAD
16r2002 EN SPACE
16r2003 EM SPACE
16r2004 THREE-PER-EM SPACE
16r2005 FOUR-PER-EM SPACE
16r2006 SIX-PER-EM SPACE
16r2007 FIGURE SPACE
16r2008 PUNCTUATION SPACE
16r2009 THIN SPACE
16r200A HAIR SPACE
16r2028 LINE SEPARATOR
16r2029 PARAGRAPH SEPARATOR
16r202F NARROW NO-BREAK SPACE
16r205F MEDIUM MATHEMATICAL SPACE
16r3000 IDEOGRAPHIC SPACE
"