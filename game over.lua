local composer = require("composer")
local scene = composer.newScene()

local cX = display.contentCenterX
local cY = display.contentCenterY


local fundo = display.newImageRect("fundo.jpg", 350, 590)
fundo.x = display.contentCenterX
fundo.y = display.contentCenterY

--botao para o inicio
local restart = display.newCircle(20, 413,10)
restart:setFillColor(1,1,1)
restart.alpha = 0

local fim = display.newText ("Game Over", cX, 120, "ARCADECLASSIC.TTF", 40)
fim:setFillColor( 1,0,0 )


--function restartGame ()
-- local composer = require "composer"
		--composer.gotoScene("main")
--end


--restart:addEventListener( "touch", restartGame )




return scene

