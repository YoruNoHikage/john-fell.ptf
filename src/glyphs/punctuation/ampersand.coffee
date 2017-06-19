exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + serifWidth + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 710 + (5)
					y: xHeight
					dirOut: - 110 + 'deg'
					typeIn: 'smooth'
					tensionIn: '0.' + serifCurve
					expand:
						width: thickness * ( 20 / 85 )
						angle: 180 + 'deg'
						distr: 0.75
				1:
					x: 245
					y: - overshoot
					typeOut: 'smooth'
					dirIn: 0 + 'deg'
					expand:
						width: thickness * ( 93 / 85 )
						angle: 58 + 'deg'
						distr: 0
				2:
					x: 40 + (22)
					y: 205
					dirIn: - 90 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 93 / 85 )
						angle: 16 + 'deg'
						distr: 0.25
				3:
					x: 245 + (4)
					y: 440
					dirIn: - 163 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 16 / 85 )
						angle: - 18 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 310 + (2)
					y: 470
					dirOut: - 163 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 14 / 85 )
						angle: - 45 + 'deg'
						distr: 0.25
				1:
					x: 420 + (17)
					y: 615
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 70 / 85 )
						angle: - 4 + 'deg'
						distr: 0.25
				2:
					x: 315 + (0)
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 )
						angle: 180 - 90 + 'deg'
						distr: 1
				3:
					x: 145 + (19)
					y: 610
					dirOut: - 90 + 'deg'
					tensionOut: 1.6
					typeIn: 'smooth'
					expand:
						width: thickness * ( 87 / 85 )
						angle: 180 + 31 + 'deg'
						distr: 0.75
				4:
					x: 274 + (37)
					y: 395 + (22)
					typeOut: 'smooth'
					dirIn: 130 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 87 / 85 )
						angle: 180 + 31 + 'deg'
						distr: 0.5
				5:
					x: 535 + (37)
					y: 90 + (22)
					typeOut: 'smooth'
					dirIn: 130 + 'deg'
					expand:
						width: thickness * ( 87 / 85 )
						angle: 180 + 31 + 'deg'
						distr: 0.5
				6:
					x: 700 + (0)
					y: - overshoot + (0)
					typeIn: 'smooth'
					dirOut: 0 + 'deg'
					expand:
						width: thickness * ( 78 / 85 )
						angle: 180 + 63 + 'deg'
						distr: 1
				7:
					x: 820 + (4)
					y: 150 + (0)
					typeOut: 'smooth'
					dirIn: - 97 + 'deg'
					expand:
						width: thickness * ( 16 / 85 )
						angle: - 18 + 'deg'
						distr: 0.25
	# components:
	# 	0:
	# 		base: 'serif'
	# 		parentAnchors:
	# 			0:
	# 				x: Utils.onLine({
	# 					y: xHeight - serifHeight - serifCurve * ( 75 / 15 )
	# 					on: [ contours[0].nodes[2].expandedTo[1], contours[0].nodes[3].expandedTo[1] ]
	# 				})
	# 				y: xHeight - serifHeight - serifCurve * ( 75 / 15 )
	# 			1:
	# 				x: Utils.onLine({
	# 					y: xHeight - serifHeight - serifCurve * ( 90 / 15 )
	# 					on: [ contours[0].nodes[2].expandedTo[0], contours[0].nodes[3].expandedTo[0] ]
	# 				})
	# 				y: xHeight - serifHeight - serifCurve * ( 90 / 15 )
	# 			2:
	# 				anchorLine: xHeight
	# 				# leftWidth: 65
	# 				# rightWidth: 5
	# 				anchor_0: contours[0].nodes[3].expandedTo[1].x
	# 				anchor_1: contours[0].nodes[3].expandedTo[0].x
	# 				# rightCurve: 0.6
	# 				# leftCurve: 1.1
	# 				angle: contours[0].nodes[3].dirIn
	# 				directionY: -1
	# 				baseRight: contours[0].nodes[3].expandedTo[0]
	# 				baseLeft: contours[0].nodes[3].expandedTo[1]
	# 				# max0: contours[0].nodes[2].expandedTo[0]
	# 				# max1: contours[0].nodes[2].expandedTo[1]
