class exports.Color
	
	hex: ""
	red: 0
	green: 0
	blue: 0
	alpha: 1
	_css_colors: {aliceblue:'#F0F8FF', red:'#FF0000'}
  
	constructor: (options) ->
    
	  if typeof options == "string"
	    if @_css_colors[options] 
	      @fromHex @_css_colors[options]
	      return
	    options = {hex:options}
	    
	  if Array.isArray options
	    rgbArray = options
	    options =
	      red: rgbArray[0]
	      green: rgbArray[1]
	      blue: rgbArray[2]
        
      if rgbArray[3]
        options.alpha = rgbArray[3]
	    
	 
	  if options.hasOwnProperty "hex"
		  @fromHex options["hex"]
		  return
		
	  if options.hasOwnProperty "red"
		  @red = options["red"]
		  
	  if options.hasOwnProperty "green"
		  @green = options["green"]
		  
	  if options.hasOwnProperty "blue"
		  @blue = options["blue"]
      
	  if options.hasOwnProperty "alpha"
		  @alpha = options["alpha"]
            
	
  colorFromHex: (hex) -> 
    hex = hex.replace(/\#/g, "")
    @hex = hex
    if hex.length == 3 
      hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2]
    conv = hex.match /.{2}/g
    @red = parseInt conv[0],16
    @green = parseInt conv[1],16
    @blue = parseInt conv[2],16
    @alpha = 1
	  
	toCSS: ->
	  return "rgba(" + @red + "," + @green + "," + @blue + "," + @alpha + ")"
	  
	  
	 