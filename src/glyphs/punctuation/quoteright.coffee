exports.glyphs['quoteright'] =
	unicode: '’'
	ot:
		advanceWidth: width * 120 + thickness * 2 - ( 86 * 2 )
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: '_quoteright'
			parentAnchors:
				0:
					x: 42 + (36)
					y: capHeight + overshoot
