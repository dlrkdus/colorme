--링 통과하는 게임 시작하는 화면

local composer = require( "composer" )
local scene = composer.newScene()
function scene:create( event )
	local sceneGroup = self.view

	local function catch( event )
		--if(event.phase == "began") then
			composer.removeScene("view18ring")
			composer.gotoScene("view18ring_1")
		--end
	end


	

    local background = display.newImage( "이미지/미니게임/미니게임_보라마을/미니게임_링통과게임 배경(보라마을).png", display.contentWidth, display.contentHeight)
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2
    sceneGroup:insert(background)
    --[[local ready = display.newImage( "이미지/미니게임/미니게임_보라마을/user2.png", display.contentWidth, display.contentHeight)
    ready.x = display.contentWidth/2 - 310
    ready.y = display.contentHeight/2 + 160
    ready.rotation = 65
    sceneGroup:insert(ready)]]
    local daepo = display.newImage( "이미지/미니게임/미니게임_보라마을/미니게임_링통과게임 대기모양(보라마을).png", display.contentWidth, display.contentHeight)
    daepo.x = display.contentWidth/5
    daepo.y = display.contentHeight/1.2
    sceneGroup:insert(daepo)

    print("touch")
    background:addEventListener("touch", catch)

end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
    elseif phase == "did" then
        composer.removeScene("view18ring")
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

--local bgMusic = audio.loadStream("bgm.mp3")
--audio.setVolume( 0.75 )

--audio.play(bgMusic, {loops = -1, fadein = 5000})
-- loop : -1 --> 무한
return scene
