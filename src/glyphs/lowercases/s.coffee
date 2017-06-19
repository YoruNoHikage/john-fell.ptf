# TODO: width / serifs / thickness
exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 50
	anchors:
		0:
			x: contours[0].nodes[3].x
			y: xHeight + diacriticHeight
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x - 30 - (1)
					y: xHeight - ( 80 / 520 ) * xHeight
					# dirOut: Math.max(
					# 	1.8,
					# 	Math.PI - ( 1.06 / 520 ) * xHeight
					# ) # 120 + 'deg'
					dirOut: 115 / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 25 / 85 )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
				1:
					# x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					x: (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) + ( contours[0].nodes[0].expandedTo[1].x - (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) ) * ( 85 / 210 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (25)
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * ( 160 / 290 ) + (8)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 67 / 85 )
						angle: 26 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[5].x
					y: xHeight * ( 260 / 520 )
					dirOut: Math.min(
						- 15,
						Math.max(
							- 20,
							- 15 - (15 - ( 15 / 85 ) * thickness) * width
						)
					) + 'deg'
					typeIn: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: thickness * ( 75 / 85 )
						angle: 180 - 120 + 'deg'
						distr: 0.5
				4:
					x: contours[0].nodes[6].expandedTo[1].x + 200 * width + 130 - (28)
					y: contours[0].nodes[5].expandedTo[1].y + (  contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 140 / 290 ) - (7)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 70 / 85 )
						angle: 180 - 160 + 'deg'
						distr: 0.75
				5:
					x: contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 135 / 230 )
					y: - overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
				6:
					x: spacingLeft + (17)
					y: ( 100 / 520 ) * xHeight
					dirIn: -1.13446 # - 65 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 25 / 85 )
						angle: contours[0].nodes[6].dirIn - Math.PI / 2
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[6].dirIn
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[1]
					opposite: contours[0].nodes[6].expandedTo[0]
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
					down: true
					left: true
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirIn
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
