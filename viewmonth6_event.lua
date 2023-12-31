--눈꽃달(6월) 이벤트 스크립트

local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )
local objectsToDestroy = {} 
function scene:create( event )
	local sceneGroup = self.view
	
	--장면전환
	local options={
		effect="crossFade",
		time=1000
	}


	local background = display.newImageRect("이미지/이벤트/6월/눈사람1.png",display.contentWidth, display.contentHeight)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)
	table.insert(objectsToDestroy, background)

	local background3 = display.newImageRect("이미지/이벤트/6월/눈사람2.png",display.contentWidth, display.contentHeight)
	background3.x,background3.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background3)
	table.insert(objectsToDestroy, background3)
	background3.alpha = 0

	local daesapan = display.newImage("이미지/대화/대화창/블리.png")
	daesapan.x, daesapan.y = display.contentWidth/2,display.contentHeight*0.85
	sceneGroup:insert(daesapan)
	table.insert(objectsToDestroy, daesapan)
	daesapan.alpha = 0

	local my_daesapan = display.newImage("이미지/대화/대화창/주인공.png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.85
	sceneGroup:insert(my_daesapan)
	table.insert(objectsToDestroy, my_daesapan)
	my_daesapan.alpha=0

	local lay_daesapan = display.newImage("이미지/대화/대화창/레이.png")
	lay_daesapan.x, lay_daesapan.y = display.contentWidth/2,display.contentHeight*0.85
	sceneGroup:insert(lay_daesapan)
	table.insert(objectsToDestroy, lay_daesapan)
	lay_daesapan.alpha=0

	local choose1 = display.newImage("이미지/대화/선택지/레이.png")
	choose1.x, choose1.y = display.contentWidth*0.2,display.contentHeight*0.47
	sceneGroup:insert(choose1)
	table.insert(objectsToDestroy, choose1)
	choose1.alpha = 0

	local choose2 = display.newImage("이미지/대화/선택지/레이.png")
	choose2.x, choose2.y = display.contentWidth*0.8,display.contentHeight*0.47
	sceneGroup:insert(choose2)
	table.insert(objectsToDestroy, choose2)
	choose2.alpha = 0

	local loadedSettings = loadsave.loadTable( "settings.json" )
	mainName = loadedSettings.name
	

	local my = display.newText(mainName,190,505,"font/잘풀리는오늘 Medium.ttf")
	my.size = 45
	my.alpha = 0
	my.x, my.y = display.contentWidth * 0.170,display.contentHeight*0.75
	my:setFillColor(1)
	sceneGroup:insert(my)
	table.insert(objectsToDestroy, my)


	local daewha = {}
	local daewha2 = {}
	local daewha3 = {}

	local text = {
		"얘들아! 여기서 뭐해?",
		mainName .. "! 마침 잘 왔어. 내 얘기 좀 들어봐!",
		"레이가 만든 눈사람이 너무 허전해서 내 곰돌이 인형처럼 꾸미자고 했더니 싫다는 거야.",
		"난 망토 두른 슈퍼맨 눈사람을 만들고 싶단 말이야….",
		"어떻게 곰돌이가 싫을 수 있어?!",
		"곰돌이는 안 멋지다구…."
	}

	local text2 = {
		"그럼, 망토도 두르고\n곰돌이도 두면 되지!",
		"둘 다 하면 되지! 망토도 두루고 곰돌이도 옆에 두면 용감하고 귀여운 눈사람이 되니까, 두 배로 좋은 거 아닐까?",
		"난 좋아!",
		"으응…."
	}

	local text3 = {
		"레이가 만든 눈사람이니까\n    레이 마음대로 하자!",
		"곰인형도 귀엽지만, 레이가 만든 눈사람이니까 레이가 하고 싶은 대로 하는 게 좋을 것 같아!",
		"그, 그런가?",
		"응! 대신 곰돌이 눈사람을 하나 더 만들자! 내가 도와줄게.",
		"좋아!",
		"그렇다면 나도 도울게! 내 슈퍼맨 눈사람에게 친구가 생기면 밤에도 덜 무서울 거야!"
	}

	for i = 1,6 do
		daewha[i] = display.newText(text[i],105,550,"font/NanumSquare_acB.ttf")
		daewha[i].anchorX,daewha[i].anchorY = 0,0
		daewha[i]:setFillColor(0)
		daewha[i].alpha = 0
		daewha[i].size = 30
		daewha[i].x, daewha[i].y = display.contentWidth * 0.084,display.contentHeight*0.8
		sceneGroup:insert(daewha[i])
		table.insert(objectsToDestroy, daewha[i])
	end

	for i = 1,4 do
		if i == 1 then
			daewha2[i] = display.newText(text2[i],105,550,"font/NanumSquare_acB.ttf")
			daewha2[i].size = 36
		else
			daewha2[i] = display.newText(text2[i],105,550,"font/NanumSquare_acB.ttf")
			daewha2[i].size = 30
		end
		daewha2[i].anchorX,daewha2[i].anchorY = 0,0
		daewha2[i]:setFillColor(0)
		daewha2[i].alpha = 0
		daewha2[i].x, daewha2[i].y = display.contentWidth * 0.084,display.contentHeight*0.8
		sceneGroup:insert(daewha2[i])
		table.insert(objectsToDestroy, daewha2[i])
	end

	for i =1,6 do
		if i == 1 then
			daewha3[i] = display.newText(text3[i],105,550,"font/NanumSquare_acB.ttf")
			daewha3[i].size = 36
		else
			daewha3[i] = display.newText(text3[i],105,550,"font/NanumSquare_acB.ttf")
			daewha3[i].size = 30
		end
		daewha3[i].x, daewha3[i].y = display.contentWidth * 0.084,display.contentHeight*0.8
		daewha3[i].anchorX,daewha3[i].anchorY = 0,0
		daewha3[i]:setFillColor(0)
		daewha3[i].alpha = 0
		sceneGroup:insert(daewha3[i])
		table.insert(objectsToDestroy, daewha3[i])
	end

	local i = 2
	local n = 3

	local function show1(event)
		if event.phase == "began" then
			if k == 1 then
				k = k +1
			else
				background:removeEventListener("touch",show1)
				composer.removeScene("viewmonth6_event")
				composer.gotoScene("view01Map",options)
			end
		end
	end

	

	local function next1_1(event)
		if event.phase == "began" then
			if n < 5 then
				if n == 3 then
					my_daesapan.alpha=0
					my.alpha = 0
					daesapan.alpha = 1
					my_daesapan:removeEventListener("touch",next1_1)
					daesapan:addEventListener("touch",next1_1)

				else
					lay_daesapan.alpha = 1
				end
				
				daewha2[n-1].alpha = 0
				daewha2[n].alpha = 1
				n= n+ 1
			elseif n == 5 then
				display.remove(daewha2[4])
				lay_daesapan.alpha = 0
				daesapan.alpha = 0
				
				daesapan:removeEventListener("touch",next1_1)
				background:addEventListener("touch",show1)
			end
			
		end
	end

	local function next1(event)

		if event.phase == "began" then
			loadedSettings.red = loadedSettings.red + 1
			loadsave.saveTable(loadedSettings, "settings.json")
			lay_daesapan.alpha = 0
			daewha[6].alpha = 0
			my_daesapan.alpha=1
			my.alpha = 1
			choose1.alpha = 0
			choose2.alpha = 0
			daewha2[1].alpha = 0
			daewha3[1].alpha = 0
			daewha2[2].alpha = 1
			daesapan.alpha = 0
			choose1:removeEventListener("touch",next1)
			my_daesapan:addEventListener("touch",next1_1)
		end

	end

	local a = 1

	local function show(event)
		if event.phase == "ended" then
			if a == 1 then
				a = a+ 1

			elseif a == 2 then
				background:removeEventListener("touch", show)

				transition.to(background3, { time = 500, alpha = 1, onComplete = function()
		            -- transition이 완료된 후에 background2에 대한 터치 이벤트 리스너를 다시 활성화합니다.
		            background3:addEventListener("touch", show)
		            background.alpha = 0
		        end })


				a = a+ 1
			elseif a == 3 then
				a = a+ 1
			else
				print("이미지변경3")
				background:removeEventListener("touch",show)
				composer.removeScene("viewmonth6_event")
				composer.gotoScene("view01Map",options)
			end
		end
	end


	local function next2_1(event)
		if event.phase == "began" then
			if n < 7 then
				if n == 3 then
					my_daesapan.alpha=0
					my.alpha = 0
					daesapan.alpha = 1
					my_daesapan:removeEventListener("touch",next2_1)
					daesapan:addEventListener("touch",next2_1)
				elseif n == 4 then
					my_daesapan.alpha=1
					my.alpha = 1
					daesapan.alpha = 0
					lay_daesapan.alpha = 0
					daesapan:removeEventListener("touch",next2_1)
					my_daesapan:addEventListener("touch",next2_1)
				elseif n == 5 then
					my_daesapan.alpha=0
					my.alpha = 0
					daesapan.alpha = 1
					lay_daesapan.alpha = 0
					my_daesapan:removeEventListener("touch",next2_1)
					daesapan:addEventListener("touch",next2_1)
				else
					lay_daesapan.alpha = 1

				end
				daewha3[n-1].alpha = 0
				daewha3[n].alpha = 1
				n= n+ 1
			elseif n == 7 then
				daewha3[6].alpha = 0
				lay_daesapan.alpha = 0
				daesapan.alpha = 0
				daesapan:removeEventListener("touch",next2_1)

				background:addEventListener("touch",show)
			end
		end
	end

	local function next2(event)
		
		if event.phase == "began" then
			loadedSettings.red = loadedSettings.red + 2
			loadedSettings.purple = loadedSettings.purple+ 2
			loadsave.saveTable(loadedSettings, "settings.json")

			lay_daesapan.alpha = 0
			daewha[6].alpha = 0
			choose1.alpha = 0
			choose2.alpha = 0
			daewha3[1].alpha = 0
			daewha2[1].alpha = 0
			daewha3[2].alpha = 1
			my_daesapan.alpha=1
			my.alpha = 1
			daesapan.alpha = 0
			choose1:removeEventListener("touch",next2)
			my_daesapan:addEventListener("touch",next2_1)
		end

	end


	local function next(event)
		if event.phase == "began" then

			if i == 2 or i == 3 or i == 5 then
				my_daesapan.alpha=0
				my.alpha = 0
				lay_daesapan.alpha=0
				daesapan.alpha = 1
				my_daesapan:removeEventListener("touch",next)
				daesapan:addEventListener("touch",next)
			else
				lay_daesapan.alpha=1
			end

			if i < 7 then
				daewha[i-1].alpha = 0
				daewha[i].alpha = 1
			end
			i = i + 1

			if i == 8 then
				daesapan:removeEventListener("touch",next)
				choose1.alpha = 1
				daewha2[1].alpha = 1
				daewha2[1]:setFillColor(1)
				daewha2[1].anchorX,daewha2[1].anchorY = 0.5,0.5
				daewha2[1].x,daewha2[1].y = display.contentWidth*0.2,display.contentHeight*0.47
				
				choose2.alpha = 1
				daewha3[1].alpha = 1
				daewha3[1]:setFillColor(1)
				daewha3[1].anchorX,daewha3[1].anchorY = 0.5,0.5
				daewha3[1].x,daewha3[1].y = display.contentWidth*0.8,display.contentHeight*0.47

				choose1:addEventListener("touch",next1)
				choose2:addEventListener("touch",next2)

			end
		end
	end

	local function num1(event)

		if event.phase == "began" then
			daewha[1].alpha = 1
			my_daesapan.alpha = 1
			my.alpha = 1
			daesapan.alpha = 0
			my_daesapan:addEventListener("touch",next)
			background:removeEventListener("touch",num1)
		end

	end

	background:addEventListener("touch",num1)

end

local function destroyObjects()
    for i = 1, #objectsToDestroy do
        display.remove(objectsToDestroy[i])
        objectsToDestroy[i] = nil
    end
    objectsToDestroy = nil
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
		composer.removeScene("viewmonth6_event")
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	destroyObjects()
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

return scene