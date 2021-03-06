exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (6) + serifWidth + 15
		spacingRight: 50 * spacing + 90
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 50 / 85 ) * thickness
					# y: 50
					dirOut: 90 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				# 2:
				# 	x: contours[0].nodes[1].expandedTo[0].x
				# 	y: 0
				# 	dirIn: 90 + 'deg'
				# 	typeOut: 'line'
				# 	expand: Object({
				# 		width: contours[0].nodes[1].expandedTo[0].y
				# 		distr: 1
				# 		angle: - 90 + 'deg'
				# 	})
				# 3:	# hack
				# 	# x: contours[0].nodes[1].expandedTo[0].x
				# 	# y: 0
				# 	# type: 'smooth'
				# 	# expand: Object({
				# 	# 	width: 100
				# 	# 	distr: 0
				# 	# 	angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, { x:contours[0].nodes[1].expandedTo[0].x, y: 0 } ) + Math.PI
				# 	# })
				# 	expandedTo: [
				# 		x: contours[0].nodes[2].expandedTo[0].x
				# 		y: contours[0].nodes[2].expandedTo[0].y
				# 		# typeOut: 'line'
				# 	,
				# 		x: contours[0].nodes[1].expandedTo[1].x
				# 		y: contours[0].nodes[1].expandedTo[1].y
				# 		dirIn: - 90 + 'deg'
				# 	]
				# 4:	# hack
				# 	x: contours[0].nodes[1].expandedTo[0].x
				# 	y: 0
				# 	type: 'smooth'
				# 	# dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[5].expandedTo[1].point ) * ( Math.PI * thickness ) / Math.PI
				# 	dirOut: - Math.max( 90, 90 - ( 45 / 85 ) * thickness / 45 ) + 'deg'
				# 	expand: Object({
				# 		width: thickness * ( 64 / 85 )
				# 		distr: 0
				# 		angle: - ( 34 / 85 ) * thickness + 'deg'
				# 	})
				# 5:
				# 4:
				2:
					x: contours[0].nodes[1].expandedTo[0].x - 35
					y: - 130
					# type: 'smooth'
					dirIn: Math.PI / 6 # 33 + 'deg'
					# tensionIn: 1.4
					expand: Object({
						width: thickness * ( 20 / 85 )
						distr: 1
						angle: - 34 + 'deg'
					})
		#######################################################
		#######################################################
		#######################################################
		# TODO: make it skeleton only with serifBall param
		#######################################################
		#######################################################
		#######################################################
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: contours[0].nodes[2].dirIn
					typeIn: 'line'
					# dirOut: 90 + 'deg'
				1:
					x: contours[1].nodes[0].x - 75 - 30
					y: contours[1].nodes[0].y - 25 - 30
					type: 'smooth'
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[1].nodes[2].point )
				2:
					x: contours[1].nodes[1].x - 60
					y: contours[1].nodes[1].y + 45
					type: 'smooth'
					dirOut: 90 + 'deg'
				3:
					x: contours[1].nodes[2].x + 45
					y: contours[1].nodes[2].y + 40
					type: 'smooth'
					dirOut: 0 + 'deg'
					# tensionOut: 0.3
				# 2:
				# 	x: ( 65 / 85 ) * thickness
				# 	x: 65
				# 	y: - 160
				# 	dirIn: - 146 + 'deg'
				# 	type: 'smooth'
				# 3:
				# 	x: - 15
				# 	y: - 190
				# 	dirOut: 0 + 'deg'
				# 	type: 'smooth'
				# 4:
				# 	x: - 70
				# 	y: - 140
				# 	dirOut: 90 + 'deg'
				# 	type: 'smooth'
				# 5:
				# 	x: - 25
				# 	y: - 95
				# 	dirOut: 0 + 'deg'
				# 	type: 'smooth'
				# 6:
				# 	x: 55
				# 	y: - 125
				# 	dirOut: 0 + 'deg'
				# 	type: 'smooth'
				# 7:
				# 	x: contours[0].nodes[2].expandedTo[0].x
				# 	y: 0
				# 	dirOut: 90 + 'deg'
				# 	type: 'smooth'
				4:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirIn: contours[1].nodes[0].dirOut
					# dirIn: contours[0].nodes[2].dirIn + Math.Pi
					dirIn: 0 + 'deg'
					# dirIn: - 123 + 'deg'
					# type: 'smooth'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 16
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
