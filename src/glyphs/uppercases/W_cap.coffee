# TODO: width + thickness
exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (15) + serifWidth + 10
		spacingRight: 50 * spacing + 10 + serifWidth + 30
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( 500 / 750 )
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
					})
					y: capHeight * ( 500 / 750 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 33 / 85 )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + 100 * width + 60 + (28)
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 120 / 85 )
									on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 120 / 85 )
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 120 / 85 )
									on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 120 / 85 )
								typeIn: 'line'
							}
						]
				2:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[1].x + 200 * width + 190 + (12)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x + 200 * width + 170 + (0)
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 200 * width + 190 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 110 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 138 / 85 )
									on: [ contours[3].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 138 / 85 )
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 138 / 85 )
									on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 138 / 85 )
								typeIn: 'line'
							}
						]
				2:
					x: contours[2].nodes[1].expandedTo[0].x + contours[2].nodes[1].expand.width
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				2:
					anchorLine: capHeight
					# leftWidth: 40
					rightWidth: 80
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[3].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 90 / 15 ) )
						on: [ contours[3].nodes[0].expandedTo[1].point, contours[3].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[3].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 90 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[3].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 40 / 15 ) )
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[3].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 40 / 15 ) )
				2:
					anchorLine: capHeight
					leftWidth: 30
					rightWidth: 80
					baseRight: contours[3].nodes[0].expandedTo[1].point
					baseLeft: contours[3].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				2:
					anchorLine: capHeight
					leftWidth: 100
					rightWidth: 30
					baseRight: contours[2].nodes[0].expandedTo[1].point
					baseLeft: contours[2].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point )
					directionY: -1
