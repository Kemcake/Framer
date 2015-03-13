describe "Color", ->

	describe "Constructor", ->

		it "should create color from rgb array", ->
			color = new Color([1,2,3])
			color.red.should.equal 1
			color.green.should.equal 2
			color.blue.should.equal 3
			color.alpha.should.equal 1

		it "should create color from rgba array", ->
			color = new Color([1,2,3,0.5])
			color.red.should.equal 1
			color.green.should.equal 2
			color.blue.should.equal 3
			color.alpha.should.equal 0.5

		it "should create color from hex string", ->
			color = new Color("#326496")
			color.red.should.equal 50
			color.green.should.equal 100
			color.blue.should.equal 150
			color.alpha.should.equal 1

		it "should create color from short hex string", ->
			color = new Color("#666")
			color.red.should.equal 102
			color.green.should.equal 102
			color.blue.should.equal 102
			color.alpha.should.equal 1

		it "should create color from object with hex", ->
			color = new Color({hex:"326496"})
			color.red.should.equal 50
			color.green.should.equal 100
			color.blue.should.equal 150
			color.alpha.should.equal 1

		it "should create color from object with rgb", ->
			color = new Color({red:1, green:2, blue:3})
			color.red.should.equal 1
			color.green.should.equal 2
			color.blue.should.equal 3
			color.alpha.should.equal 1

		it "should create color from object with rgba", ->
			color = new Color({red:1, green:2, blue:3, alpha:0.5})
			color.red.should.equal 1
			color.green.should.equal 2
			color.blue.should.equal 3
			color.alpha.should.equal 0.5
