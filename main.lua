-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------



local composer = require("composer")
local scene = composer.newScene()




--botao para o inicio
local inicio = display.newRect (150, 40, 220, 250 )
inicio.x = display.contentCenterX
inicio.y = display.contentCenterY
inicio.alpha = 1





--imagem de fundo
local fundo = display.newImageRect("fundo.jpg", 350, 590)
fundo.x = display.contentCenterX
fundo.y = display.contentCenterY
local segundoInicial = 0
local segundoFinal = 1
contador = 0





--esconder status bar
display.setStatusBar( display.MiddenStatusBar )

--add botaos
local botao = {}
botao[1] = display.newCircle( 70, 160, 35 )
botao[1].alpha = 0
botao[2] = display.newCircle( 70, 280, 35 )
botao[2].alpha = 0
botao[3] = display.newCircle( 165, 160, 35 )
botao[3].alpha = 0
botao[4] = display.newCircle( 165, 280, 35 )
botao[4].alpha = 0
botao[5] = display.newCircle( 260, 280, 35 )
botao[5].alpha = 0
botao[6] = display.newCircle( 260, 160, 35 )
botao[6].alpha = 0





--botao para iniciar
function iniciaJogo()
	segundoInicial = os.date('*t').sec
	aleatorio()
	inicio.alpha = 0
end


--mecanica de aleatorio para aparecer os botoes
	function aleatorio( )
		

 print( "Teste " .. os.date('*t').sec )
		segundoFinal = os.date('*t').sec
		if ((segundoFinal-segundoInicial) < 1) then
			local number = math.random( 6 )
			if (number == 1) then
			botao[1]:setFillColor( 1,0,0 )
			botao[1].alpha = 1
		else
			botao[1].alpha = 0
			end
			if (number == 2) then
			botao[2]:setFillColor( 1,0,0 )
			botao[2].alpha = 1
		else
			botao[2].alpha = 0
			end
			if (number == 3) then
			botao[3]:setFillColor( 1,0,0 )
			botao[3].alpha = 1
		else
			botao[3].alpha = 0
			end
			if (number == 4) then
			botao[4]:setFillColor( 1,0,0 )
			botao[4].alpha = 1
		else
			botao[4].alpha = 0
			end
			if (number == 5) then
			botao[5]:setFillColor( 1,0,0 )
			botao[5].alpha = 1
		else
			botao[5].alpha = 0
			end
			if (number == 6) then
			botao[6]:setFillColor( 1,0,0 )
			botao[6].alpha = 1
		else
			botao[6].alpha = 0
		end
		segundoInicial = os.date('*t').sec
	else
		print ("perdeu")
		 local composer = require "composer"
		composer.gotoScene("game over")
		end

end




--contador para ver quando perde
local currentTime = display.newText( ""..contador, display.contentCenterX, 100, native.systemFont, 20)
currentTime.alpha = 0



local function updateTime()
	contador = contador + 1
currentTime.text = os.date('*t').sec
end

timer.performWithDelay( 500, updateTime, 0)

--botoes
botao[1]:addEventListener("tap",aleatorio)

botao[2]:addEventListener("tap",aleatorio)

botao[3]:addEventListener("tap",aleatorio)

botao[4]:addEventListener("tap",aleatorio)

botao[5]:addEventListener("tap",aleatorio)

botao[6]:addEventListener("tap",aleatorio)

inicio:addEventListener( "touch", iniciaJogo )


return scene