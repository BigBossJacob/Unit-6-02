display.setDefault( "background", 0/255, 102/255, 255/255 )

local image = display.newImageRect( "Assets/plusminus.png", 200, 200 )
image.x = 160
image.y = 60

local calculateButton = display.newImageRect( "Assets/enterbutton.png", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "Type in a number to see if it is positive or negative" )

answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
answerAsNumberField.id = "Answer textField"

responseText = display.newText( "Positive Or Negative Number?", 160, 150, native.systemFont, 20 )
responseText:setFillColor( 255/255, 255/255, 255/255 )


local function calculateButtonTouch( event )

local answerAsNumber = tonumber(answerAsNumberField.text)

if answerAsNumber < 0 then
  	
  	print("")
    print( "Negative Number" )
    responseText.text = "Negative Number"

else 
	print("")
	print( "Positive Number")
	responseText.text = "Positive Number"
end

if answerAsNumber == 0 then
	print ("")
	responseText.text = "Zero Is Neutral"
end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )