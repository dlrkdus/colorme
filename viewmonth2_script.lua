--꽃피는달(2) 우정 스크립트
local composer = require( "composer" )
local scene = composer.newScene()
local loadsave = require( "loadsave" )

function scene:create( event )
	local sceneGroup = self.view
	
	local loadedSettings = loadsave.loadTable( "settings.json" )
	mainName = loadedSettings.name-------수정
	 local loadedEndings = loadsave.loadTable( "endings.json" )

	--장면전환
	local options={
		effect="crossFade",
		time=1000
	}

	local background_1 = display.newImageRect("이미지/대화/우정배경/빨강.png",display.contentWidth, display.contentHeight)
	background_1.x,background_1.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_1)
	background_1.alpha = 0

	local background_2 = display.newImageRect("이미지/대화/우정배경/노랑.png",display.contentWidth, display.contentHeight)
	background_2.x,background_2.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_2)
	background_2.alpha = 0

	local background_3 = display.newImageRect("이미지/대화/우정배경/초록.png",display.contentWidth, display.contentHeight)
	background_3.x,background_3.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_3)
	background_3.alpha = 0

	local background_4 = display.newImageRect("이미지/대화/우정배경/파랑.png",display.contentWidth, display.contentHeight)
	background_4.x,background_4.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_4)
	background_4.alpha = 0

	local background_5 = display.newImageRect("이미지/대화/우정배경/보라.png",display.contentWidth, display.contentHeight)
	background_5.x,background_5.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background_5)
	background_5.alpha = 0

	



	--블리

	local blli = display.newImage("이미지/캐릭터/블리/기본.png")
	blli.x, blli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(blli)
	blli.alpha = 0

	local happy_blli = display.newImage("이미지/캐릭터/블리/기쁨.png")
	happy_blli.x, happy_blli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(happy_blli)
	happy_blli.alpha = 0

	local nangam_blli = display.newImage("이미지/캐릭터/블리/난감.png")
	nangam_blli.x, nangam_blli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(nangam_blli)
	nangam_blli.alpha = 0

	local choose11 = display.newImage("이미지/대화/선택지/블리.png")
	choose11.x, choose11.y = display.contentWidth*0.23,display.contentHeight*0.47
	sceneGroup:insert(choose11)
	choose11.alpha = 0

	local choose12 = display.newImage("이미지/대화/선택지/블리.png")
	choose12.x, choose12.y = display.contentWidth*0.77,display.contentHeight*0.47
	sceneGroup:insert(choose12)
	choose12.alpha = 0

	--조이

	local joy = display.newImage("이미지/캐릭터/조이/기본.png")
	joy.x, joy.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(joy)
	joy.alpha = 0

	local happy_joy = display.newImage("이미지/캐릭터/조이/기쁨.png")
	happy_joy.x, happy_joy.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(happy_joy)
	happy_joy.alpha = 0

	local nangam_joy = display.newImage("이미지/캐릭터/조이/난감.png")
	nangam_joy.x, nangam_joy.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(nangam_joy)
	nangam_joy.alpha = 0

	local sad_joy = display.newImage("이미지/캐릭터/조이/슬픔.png")
	sad_joy.x, sad_joy.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(sad_joy)
	sad_joy.alpha = 0

	local choose21 = display.newImage("이미지/대화/선택지/조이.png")
	choose21.x, choose21.y = display.contentWidth*0.23,display.contentHeight*0.47
	sceneGroup:insert(choose21)
	choose21.alpha = 0

	local choose22 = display.newImage("이미지/대화/선택지/조이.png")
	choose22.x, choose22.y = display.contentWidth*0.77,display.contentHeight*0.47
	sceneGroup:insert(choose22)
	choose22.alpha = 0

--솔리

	local soli = display.newImage("이미지/캐릭터/솔리/기본.png")
	soli.x, soli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(soli)
	soli.alpha = 0
	local happy_soli = display.newImage("이미지/캐릭터/솔리/기쁨.png")
	happy_soli.x, happy_soli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(happy_soli)
	happy_soli.alpha = 0

	local nangam_soli = display.newImage("이미지/캐릭터/솔리/난감.png")
	nangam_soli.x, nangam_soli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(nangam_soli)
	nangam_soli.alpha = 0

	local sad_soli = display.newImage("이미지/캐릭터/솔리/슬픔.png")
	sad_soli.x, sad_soli.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(sad_soli)
	sad_soli.alpha = 0

	local choose31 = display.newImage("이미지/대화/선택지/솔리.png")
	choose31.x, choose31.y = display.contentWidth*0.23,display.contentHeight*0.47
	sceneGroup:insert(choose31)
	choose31.alpha = 0

	local choose32 = display.newImage("이미지/대화/선택지/솔리.png")
	choose32.x, choose32.y = display.contentWidth*0.77,display.contentHeight*0.47
	sceneGroup:insert(choose32)
	choose32.alpha = 0


--위즈

	local wiz = display.newImage("이미지/캐릭터/위즈/기본.png")
	wiz.x, wiz.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(wiz)
	wiz.alpha = 0

	local happy_wiz = display.newImage("이미지/캐릭터/위즈/기쁨.png")
	happy_wiz.x, happy_wiz.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(happy_wiz)
	happy_wiz.alpha = 0

	local nangam_wiz = display.newImage("이미지/캐릭터/위즈/난감.png")
	nangam_wiz.x, nangam_wiz.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(nangam_wiz)
	nangam_wiz.alpha = 0

	local sad_wiz = display.newImage("이미지/캐릭터/위즈/슬픔.png")
	sad_wiz.x, sad_wiz.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(sad_wiz)
	sad_wiz.alpha = 0

	local choose41 = display.newImage("이미지/대화/선택지/위즈.png")
	choose41.x, choose41.y = display.contentWidth*0.23,display.contentHeight*0.47
	sceneGroup:insert(choose41)
	choose41.alpha = 0

	local choose42 = display.newImage("이미지/대화/선택지/위즈.png")
	choose42.x, choose42.y = display.contentWidth*0.77,display.contentHeight*0.47
	sceneGroup:insert(choose42)
	choose42.alpha = 0

--보라
	
	local lay = display.newImage("이미지/캐릭터/레이/기본.png")
	lay.x, lay.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(lay)
	lay.alpha = 0

	local alay = display.newImage("이미지/캐릭터/레이/기본.png")
	alay.x, alay.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(alay)
	alay.alpha = 0

	local happy_lay = display.newImage("이미지/캐릭터/레이/기쁨.png")
	happy_lay.x, happy_lay.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(happy_lay)
	happy_lay.alpha = 0
	
	local sad_lay = display.newImage("이미지/캐릭터/레이/슬픔.png")
	sad_lay.x, sad_lay.y = display.contentWidth*0.53,display.contentHeight*0.5
	sceneGroup:insert(sad_lay)
	sad_lay.alpha = 0

	local choose51 = display.newImage("이미지/대화/선택지/레이.png")
	choose51.x, choose51.y = display.contentWidth*0.23,display.contentHeight*0.47
	sceneGroup:insert(choose51)
	choose51.alpha = 0

	local choose52 = display.newImage("이미지/대화/선택지/레이.png")
	choose52.x, choose52.y = display.contentWidth*0.77,display.contentHeight*0.47
	sceneGroup:insert(choose52)
	choose52.alpha = 0



	local script_1 = display.newImage("이미지/대화/대화창/블리.png")
	script_1.x,script_1.y =  display.contentWidth*0.5,display.contentHeight*0.7176
	sceneGroup:insert(script_1)
	script_1.alpha = 0
	script_1.anchorY=0

	local script_2 = display.newImage("이미지/대화/대화창/조이.png")
	script_2.x, script_2.y = display.contentWidth*0.5,display.contentHeight*0.7176
	sceneGroup:insert(script_2)
	script_2.alpha = 0
	script_2.anchorY=0

	local script_3 = display.newImage("이미지/대화/대화창/솔리.png")
	script_3.x, script_3.y =  display.contentWidth*0.5,display.contentHeight*0.7176
	sceneGroup:insert(script_3)
	script_3.alpha = 0
	script_3.anchorY=0

	local script_4 = display.newImage("이미지/대화/대화창/위즈.png")
	script_4.x, script_4.y =  display.contentWidth*0.5,display.contentHeight*0.7176
	sceneGroup:insert(script_4)
	script_4.alpha = 0
	script_4.anchorY=0

	local script_5 = display.newImage("이미지/대화/대화창/레이.png")
	script_5.x, script_5.y =  display.contentWidth*0.5,display.contentHeight*0.7176
	sceneGroup:insert(script_5)
	script_5.alpha = 0
	script_5.anchorY=0

	local my_daesapan = display.newImage("이미지/대화/대화창/주인공.png")
	my_daesapan.x, my_daesapan.y = display.contentWidth/2,display.contentHeight*0.7176
	sceneGroup:insert(my_daesapan)
	my_daesapan.alpha=0
	my_daesapan.anchorY=0

	local option = {
      text = mainName,
      x = display.contentWidth*0.175,
      y = display.contentHeight*0.73,
      font = "font/NanumSquareRoundB",
      fontSize =45,
      align="center"
   } 

   local my = display.newText(option)
   my.anchorY = 0
   my.size = 45
   my.alpha = 0
   my:setFillColor(1)
   sceneGroup:insert(my)

	local daewha11 = {}
	local daewha12 = {}
	local daewha13 = {}

	local text11 = {
		mainName  .."! 와서 이것 좀 봐!",
		"곰인형이 그려진 씨디라니! 정말 사랑스럽지 않아? "..mainName  ..", 이거 나 살까?"
	}

	local text12 = {
		"말린다",
		"가수의 팬도 아닌데 씨디를 산다고? 게다가 블리네 집엔 오디오도 없잖아. 과소비 멈춰!",
		"그, 그런가? 맞아. 오디오도 없으니 안 사는 게 낫겠어."
	}

	local text13 = {
		"(왠지 말려도 살 것 같다)\n 호응한다",
		"그래! 귀엽네!",
		"꺄아! 신난다! 스무 박스 살래!",
		"(그리고 블리는 용돈을 모두 탕진했다고 한다.)"
	}

	for i = 1,2 do
		daewha11[i] = display.newText(text11[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha11[i].anchorX,daewha11[i].anchorY = 0,0
		daewha11[i]:setFillColor(0)
		daewha11[i].alpha = 0
		daewha11[i].size = 30
		sceneGroup:insert(daewha11[i])
	end

	for i = 1,3 do
		daewha12[i] = display.newText(text12[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha12[i].anchorX,daewha12[i].anchorY = 0,0
		daewha12[i]:setFillColor(0)
		daewha12[i].alpha = 0
		daewha12[i].size = 30
		sceneGroup:insert(daewha12[i])
	end

	for i =1,4 do
		daewha13[i] = display.newText(text13[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha13[i].anchorX,daewha13[i].anchorY = 0,0
		daewha13[i]:setFillColor(0)
		daewha13[i].alpha = 0
		daewha13[i].size = 30
		sceneGroup:insert(daewha13[i])
	end

	local daewha21 = {}
	local daewha22 = {}
	local daewha23 = {}

	local text21 = {
		mainName  .."! 시원한 음료수 마시러 가자!",
		"그래! 마침 나도 목말랐어.",
		"난 화장실 다녀올게. 내 음료도 미리 시켜줘!",
		"조이가 좋아할 만한 음료가 뭘까?"
	}

	local text22 = {
		"새콤달콤 상큼톡톡 레모네이드",
		"새콤달콤 상큼톡톡 레모네이드!",
		"우와, 센스 최고! 어쩜 이렇게 내 취향을 잘 알아?"
	}

	local text23 = {
		"부드럽고 달콤한 밀크쉐이크",
		"부드럽고 달콤한 밀크쉐이크!",
		"아하하. 밀크쉐이크 좋지! (으으 달아!)"
	}

	for i = 1,4 do
		daewha21[i] = display.newText(text21[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha21[i].anchorX,daewha21[i].anchorY = 0,0
		daewha21[i]:setFillColor(0)
		daewha21[i].alpha = 0
		daewha21[i].size = 30
		sceneGroup:insert(daewha21[i])
	end

	for i = 1,3 do
		daewha22[i] = display.newText(text22[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha22[i].anchorX,daewha22[i].anchorY = 0,0
		daewha22[i]:setFillColor(0)
		daewha22[i].alpha = 0
		daewha22[i].size = 30
		sceneGroup:insert(daewha22[i])
	end

	for i =1,3 do
		daewha23[i] = display.newText(text23[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha23[i].anchorX,daewha23[i].anchorY = 0,0
		daewha23[i]:setFillColor(0)
		daewha23[i].alpha = 0
		daewha23[i].size = 30
		sceneGroup:insert(daewha23[i])
	end


	local daewha31 = {}
	local daewha32 = {}
	local daewha33 = {}

	local text31 = {
		mainName  .."! 어서 와. 마침 아이스크림을 사려 가려던 참이야. 같이 가자~",
		"너는 무슨 아이스크림을 좋아해?"
	}

	local text32 = {
		"민트 초코만 아니면 돼!",
		"난 일단 민트초코만 아니면 다 좋아. 치약은 싫어.",
		"그 ,그렇구나! 잘 알겠어! (치, 치약이라니)"
	}

	local text33 = {
		"초코맛!",
		"난 초코맛이 좋아! 그래서 초코맛 아이스크림만 먹어!",
		"그렇구나~ 나도 초코 좋아해! 오늘은 같이 초코맛 아이스크림을 먹자!"
	}

	for i = 1,2 do
		daewha31[i] = display.newText(text31[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha31[i].anchorX,daewha31[i].anchorY = 0,0
		daewha31[i]:setFillColor(0)
		daewha31[i].alpha = 0
		daewha31[i].size = 30
		sceneGroup:insert(daewha31[i])
	end

	for i = 1,3 do
		daewha32[i] = display.newText(text32[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha32[i].anchorX,daewha32[i].anchorY = 0,0
		daewha32[i]:setFillColor(0)
		daewha32[i].alpha = 0
		daewha32[i].size = 30
		sceneGroup:insert(daewha32[i])
	end

	for i =1,3 do
		daewha33[i] = display.newText(text33[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha33[i].anchorX,daewha33[i].anchorY = 0,0
		daewha33[i]:setFillColor(0)
		daewha33[i].alpha = 0
		daewha33[i].size = 30
		sceneGroup:insert(daewha33[i])
	end


	local daewha41 = {}
	local daewha42 = {}
	local daewha43 = {}

	local text41 = {
		mainName  .."! 오늘은 내가 문제를 하나 내 볼게!",
		"너는 사과를 보면 뭐가 떠올라?"
	}

	local text42 = {
		"열매",
		"둥글고, 빨갛고, 가을에 열매를 맺는 과일이야.",
		"우린 생각이 꽤 다르네."
	}

	local text43 = {
		"색연필 잡스 혹은 백설공주",
		"글쎄, 백설공주가 먹은 것, 아니면 색연필 잡스가 떠오르네.",
		"너 나와 같은 생각을 했구나!"
	}

	for i = 1,2 do
		daewha41[i] = display.newText(text41[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha41[i].anchorX,daewha41[i].anchorY = 0,0
		daewha41[i]:setFillColor(0)
		daewha41[i].alpha = 0
		daewha41[i].size = 30
		sceneGroup:insert(daewha41[i])
	end

	for i = 1,3 do
		daewha42[i] = display.newText(text42[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha42[i].anchorX,daewha42[i].anchorY = 0,0
		daewha42[i]:setFillColor(0)
		daewha42[i].alpha = 0
		daewha42[i].size = 30
		sceneGroup:insert(daewha42[i])
	end

	for i =1,3 do
		daewha43[i] = display.newText(text43[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha43[i].anchorX,daewha43[i].anchorY = 0,0
		daewha43[i]:setFillColor(0)
		daewha43[i].alpha = 0
		daewha43[i].size = 30
		sceneGroup:insert(daewha43[i])
	end

	local daewha51 = {}
	local daewha52 = {}
	local daewha53 = {}

	local text51 = {
		mainName  .."! 나 고민이 있어.",
		"무슨 일이야?",
		"놀이터에서 만난 애들이 날 자꾸 놀려. 나더러 적양파 같대 그치만 나는 양파가 싫어!"
	}

	local text52 = {
		"용기",
		"놀리지 말라고 말해봐!",
		"그, 그래! 놀리지 말고 이름으로 불러달라고 말할래."
	}

	local text53 = {
		"무시해",
		"그런 말들은 들을 가치도 없어. 무시해버려!",
		"그, 그치만.... 나는 양파가 싫은 걸."
	}

	for i = 1,3 do
		daewha51[i] = display.newText(text51[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha51[i].anchorX,daewha51[i].anchorY = 0,0
		daewha51[i]:setFillColor(0)
		daewha51[i].alpha = 0
		daewha51[i].size = 30
		sceneGroup:insert(daewha51[i])
	end

	for i = 1,3 do
		daewha52[i] = display.newText(text52[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha52[i].anchorX,daewha52[i].anchorY = 0,0
		daewha52[i]:setFillColor(0)
		daewha52[i].alpha = 0
		daewha52[i].size = 30
		sceneGroup:insert(daewha52[i])
	end

	for i =1,3 do
		daewha53[i] = display.newText(text53[i],display.contentWidth*0.0833,display.contentHeight*0.8009,"font/NanumSquare_acB.ttf")
		daewha53[i].anchorX,daewha53[i].anchorY = 0,0
		daewha53[i]:setFillColor(0)
		daewha53[i].alpha = 0
		daewha53[i].size = 30
		sceneGroup:insert(daewha53[i])
	end



	local cd = display.newImage("이미지/공통/cd.png")
	cd.x, cd.y = display.contentWidth/2,display.contentHeight*0.5
	sceneGroup:insert(cd)
	cd.alpha =0



	local num = 0
	local function touch4(event)
		if num == 1 then			
									audio.pause(music)
			composer.removeScene("viewmonth2_script")
			composer.gotoScene("view01Map",options)
		end

		num = num + 1
			
		
	end

	local loadedSettings = loadsave.loadTable( "settings.json" )

	local color = composer.getVariable("color")

	--print(loadedSettings.limited_num)

	if color == "1" then
					local music = audio.loadStream( "음악/블리 테마곡.mp3" )
 					audio.setVolume( loadedEndings.logValue )
    				audio.play(music)

					loadedSettings.red_num = loadedSettings.red_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					if loadedSettings.friendship <101 then
                  		loadedSettings.friendship = loadedSettings.friendship + 8
						loadedSettings.friend_num = loadedSettings.friend_num + 1
               		end
					print(loadedSettings.friend_num)
					print("---1")
					loadsave.saveTable(loadedSettings, "settings.json")

					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							if j == 0 then
								blli.alpha = 0
								nangam_blli.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha12[2].alpha = 0
								daewha12[3].alpha = 1
								j = j+1
								script_1.alpha = 1
								my_daesapan:removeEventListener("touch",next1_1)
								script_1:addEventListener("touch",next1_1)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									loadedEndings.bgMusic = "음악/블리 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.setVariable("color", color)
									--audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script")
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.setVariable("color_char", "1")
									composer.gotoScene("viewgift")
	               				end
							end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.red = loadedSettings.red + 5
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha11[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose11.alpha = 0
							choose12.alpha = 0
							daewha12[1].alpha = 0
							daewha13[1].alpha = 0
							daewha12[2].alpha = 1
							choose11:removeEventListener("touch",next1)
							script_1.alpha = 0
							my_daesapan:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							if j == 0 then
								blli.alpha = 0
								happy_blli.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha13[2].alpha = 0
								daewha13[3].alpha = 1
								j = j+1
								script_1.alpha = 1
								my_daesapan:removeEventListener("touch",next1_2)
								script_1:addEventListener("touch",next1_2)
							else
								if loadedSettings.script2 == 0 then
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/블리 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.red = loadedSettings.red + 2
							loadsave.saveTable(loadedSettings,"settings.json")		
							daewha11[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose11.alpha = 0
							choose12.alpha = 0
							daewha13[1].alpha = 0
							daewha12[1].alpha = 0
							daewha13[2].alpha = 1
							choose12:removeEventListener("touch",next1)
							script_1.alpha = 0
							my_daesapan:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							if i == 0 then
								transition.to(cd,{alpha=1})
								i = i+1

							elseif i == 1 then
								
								daewha11[1].alpha = 0
								--my_daesapan.alpha = 1
								daewha11[2].alpha = 1
								i=i+1

							else
								transition.to(cd,{alpha=0})
								script_1:removeEventListener("touch",next)
								choose11.alpha = 1
								daewha12[1].alpha = 1
								daewha12[1]:setFillColor(1)
								daewha12[1].size=36
								daewha12[1].anchorX,daewha12[1].anchorY = 0.5,0.5
								daewha12[1].x,daewha12[1].y = display.contentWidth*0.23,display.contentHeight*0.47
				
								choose12.alpha = 1
								daewha13[1].alpha = 1
								daewha13[1]:setFillColor(1)
								daewha13[1].size=36
								daewha13[1].anchorX,daewha13[1].anchorY = 0.5,0.5
								daewha13[1].x,daewha13[1].y = display.contentWidth*0.77,display.contentHeight*0.47

								choose11:addEventListener("touch",next1)
								choose12:addEventListener("touch",next2)

							end
						end
					end


					background_1.alpha = 1
					blli.alpha = 1
					script_1.alpha = 1
					daewha11.alpha = 1
					daewha11[1].alpha = 1
					script_1:addEventListener("touch",next)
					


	elseif color == "2" then
			-- 파랑마을 이동
					local music = audio.loadStream( "음악/위즈 테마곡.mp3" )
 					audio.setVolume( loadedEndings.logValue )
    				audio.play(music)
		
					loadedSettings.blue_num = loadedSettings.blue_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					if loadedSettings.friendship <101 then
                  		loadedSettings.friendship = loadedSettings.friendship + 8
						loadedSettings.friend_num = loadedSettings.friend_num + 1
               		end
					print(loadedSettings.friend_num)
					print("---2")
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							if j == 0 then
								wiz.alpha = 0
								nangam_wiz.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha42[2].alpha = 0
								daewha42[3].alpha = 1
								j = j+1
								my_daesapan:removeEventListener("touch",next1_1)
								script_4.alpha = 1
								script_4:addEventListener("touch",next1_1)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/위즈 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.blue = loadedSettings.blue + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha41[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose41.alpha = 0
							choose42.alpha = 0
							daewha42[1].alpha = 0
							daewha43[1].alpha = 0
							daewha42[2].alpha = 1
							choose41:removeEventListener("touch",next1)
							script_4.alpha = 0
							my_daesapan:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							if j == 0 then
								
								wiz.alpha = 0
								happy_wiz.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha43[2].alpha = 0
								daewha43[3].alpha = 1
								j = j+1
								my_daesapan:removeEventListener("touch",next1_2)
								script_4.alpha = 1
								script_4:addEventListener("touch",next1_2)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/위즈 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.blue = loadedSettings.blue + 5
							loadsave.saveTable(loadedSettings,"settings.json")			
							daewha41[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose41.alpha = 0
							choose42.alpha = 0
							daewha43[1].alpha = 0
							daewha42[1].alpha = 0
							daewha43[2].alpha = 1
							choose42:removeEventListener("touch",next1)
							script_4.alpha = 0
							my_daesapan:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							

							if i == 0 then
								
								daewha41[1].alpha = 0
								--my_daesapan.alpha = 1
								daewha41[2].alpha = 1
								i=i+1

							else
								
								script_4:removeEventListener("touch",next)
								choose41.alpha = 1
								daewha42[1].alpha = 1
								daewha42[1]:setFillColor(1)
								daewha42[1].size=36
								daewha42[1].anchorX,daewha42[1].anchorY = 0.5,0.5
								daewha42[1].x,daewha42[1].y = display.contentWidth*0.23,display.contentHeight*0.47
				
								choose42.alpha = 1
								daewha43[1].alpha = 1
								daewha43[1]:setFillColor(1)
								daewha43[1].size=36
								daewha43[1].anchorX,daewha43[1].anchorY = 0.5,0.5
								daewha43[1].x,daewha43[1].y = display.contentWidth*0.77,display.contentHeight*0.47

								choose41:addEventListener("touch",next1)
								choose42:addEventListener("touch",next2)

							end
						end
					end


					background_4.alpha = 1
					wiz.alpha = 1
					script_4.alpha = 1
					daewha41.alpha = 1
					daewha41[1].alpha = 1
					script_4:addEventListener("touch",next)


	elseif color == "3" then
		
					local music = audio.loadStream( "음악/조이 테마곡.mp3" )
 					audio.setVolume( loadedEndings.logValue )
    				audio.play(music)

					loadedSettings.yellow_num = loadedSettings.yellow_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					if loadedSettings.friendship <101 then
                  		loadedSettings.friendship = loadedSettings.friendship + 8
						loadedSettings.friend_num = loadedSettings.friend_num + 1
               		end
					print(loadedSettings.friend_num)
					print("---3")
					print(loadedSettings.friend_num)
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							if j == 0 then
								happy_joy.alpha = 1
								joy.alpha = 0
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha22[2].alpha = 0
								daewha22[3].alpha = 1
								j = j+1
								script_2.alpha = 1
								my_daesapan:removeEventListener("touch",next1_1)
								script_2:addEventListener("touch",next1_1)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/조이 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.yellow = loadedSettings.yellow + 5
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha21[4].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose21.alpha = 0
							choose22.alpha = 0
							daewha22[1].alpha = 0
							daewha23[1].alpha = 0
							daewha22[2].alpha = 1
							choose21:removeEventListener("touch",next1)
							script_2.alpha = 0
							my_daesapan:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							if j == 0 then
								joy.alpha = 0
								nangam_joy.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha23[2].alpha = 0
								daewha23[3].alpha = 1
								j = j+1
								script_2.alpha = 1
								my_daesapan:removeEventListener("touch",next1_2)
								script_2:addEventListener("touch",next1_2)
							else
								script_2:removeEventListener("touch",next1_2)
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/조이 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.yellow = loadedSettings.yellow + 2
							loadsave.saveTable(loadedSettings,"settings.json")					
							daewha21[4].alpha = 0
							--my_daesapan.alpha=1
							choose21.alpha = 0
							choose22.alpha = 0
							daewha23[1].alpha = 0
							daewha22[1].alpha = 0
							daewha23[2].alpha = 1
							choose22:removeEventListener("touch",next2)
							script_2.alpha = 0
							my_daesapan:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							if i == 0 then
								daewha21[1].alpha = 0
						
								daewha21[2].alpha = 1
								my_daesapan.alpha  = 1
								my.alpha = 1
								i=i+1
								script_2.alpha = 0
								script_2:removeEventListener("touch",next)
								my_daesapan:addEventListener("touch",next)

							elseif i == 1 then
								
								daewha21[2].alpha = 0
								my_daesapan.alpha  = 0
								my.alpha = 0
								daewha21[3].alpha = 1
								i=i+1
								script_2.alpha = 1
								my_daesapan:removeEventListener("touch",next)
								script_2:addEventListener("touch",next)

							elseif i == 2 then
								daewha21[3].alpha = 0
								my_daesapan.alpha  = 1
								my.alpha = 1
								daewha21[4].alpha = 1
								i=i+1
								script_2.alpha = 0
								script_2:removeEventListener("touch",next)
								my_daesapan:addEventListener("touch",next)

							else
								
								my_daesapan:removeEventListener("touch",next)
								choose21.alpha = 1
								daewha22[1].alpha = 1
								daewha22[1]:setFillColor(1)
								daewha22[1].size=36
								daewha22[1].anchorX,daewha22[1].anchorY = 0.5,0.5
								daewha22[1].x,daewha22[1].y = display.contentWidth*0.23,display.contentHeight*0.47
				
								choose22.alpha = 1
								daewha23[1].alpha = 1
								daewha23[1]:setFillColor(1)
								daewha23[1].size=36
								daewha23[1].anchorX,daewha23[1].anchorY = 0.5,0.5
								daewha23[1].x,daewha23[1].y = display.contentWidth*0.77,display.contentHeight*0.47

								choose21:addEventListener("touch",next1)
								choose22:addEventListener("touch",next2)

							end
						end
					end


					background_2.alpha = 1
					joy.alpha = 1
					script_2.alpha = 1
					daewha21.alpha = 1
					daewha21[1].alpha = 1
					script_2:addEventListener("touch",next)
			
	elseif color == "4" then
			-- 보라마을 이동
					local music = audio.loadStream( "음악/레이 테마곡.mp3" )
 					audio.setVolume( loadedEndings.logValue )
    				audio.play(music)
		
					loadedSettings.purple_num = loadedSettings.purple_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					if loadedSettings.friendship <101 then
                  		loadedSettings.friendship = loadedSettings.friendship + 8
						loadedSettings.friend_num = loadedSettings.friend_num + 1
               		end
					print(loadedSettings.friend_num)
					print("---4")
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							if j == 0 then
								lay.alpha = 0
								alay.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha52[2].alpha = 0
								daewha52[3].alpha = 1
								j = j+1
								script_5.alpha = 1
								my_daesapan:removeEventListener("touch",next1_1)
								script_5:addEventListener("touch",next1_1)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/레이 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.purple = loadedSettings.purple + 5
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha51[3].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose51.alpha = 0
							choose52.alpha = 0
							daewha52[1].alpha = 0
							daewha53[1].alpha = 0
							daewha52[2].alpha = 1
							choose51:removeEventListener("touch",next1)
							script_5.alpha = 0
							my_daesapan:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							if j == 0 then
								
								lay.alpha = 0
								sad_lay.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha53[2].alpha = 0
								daewha53[3].alpha = 1
								j = j+1
								script_5.alpha = 1
								my_daesapan:removeEventListener("touch",next1_2)
								script_5:addEventListener("touch",next1_2)

							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)
									loadedEndings.bgMusic = "음악/레이 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.purple = loadedSettings.purple + 2
							loadsave.saveTable(loadedSettings,"settings.json")					
							daewha51[3].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose51.alpha = 0
							choose52.alpha = 0
							daewha53[1].alpha = 0
							daewha52[1].alpha = 0
							daewha53[2].alpha = 1
							choose52:removeEventListener("touch",next1)
							script_5.alpha = 0
							my_daesapan:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							

							if i == 0 then
								
								daewha51[1].alpha = 0
								my_daesapan.alpha = 1
								my.alpha = 1
								daewha51[2].alpha = 1
								i=i+1
								script_5.alpha = 0
								script_5:removeEventListener("touch",next)
								my_daesapan:addEventListener("touch",next)

							elseif i == 1 then
								daewha51[2].alpha = 0
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha51[3].alpha = 1
								i=i+1
								script_5.alpha = 1
								my_daesapan:removeEventListener("touch",next)
								script_5:addEventListener("touch",next)

							else
								
								script_5:removeEventListener("touch",next)
								choose51.alpha = 1
								daewha52[1].alpha = 1
								daewha52[1]:setFillColor(1)
								daewha52[1].size=36
								daewha52[1].anchorX,daewha52[1].anchorY = 0.5,0.5
								daewha52[1].x,daewha52[1].y = display.contentWidth*0.23,display.contentHeight*0.47
				
								choose52.alpha = 1
								daewha53[1].alpha = 1
								daewha53[1]:setFillColor(1)
								daewha53[1].size=36
								daewha53[1].anchorX,daewha53[1].anchorY = 0.5,0.5
								daewha53[1].x,daewha53[1].y = display.contentWidth*0.77,display.contentHeight*0.47

								choose51:addEventListener("touch",next1)
								choose52:addEventListener("touch",next2)

							end
						end
					end


					background_5.alpha = 1
					lay.alpha = 1
					script_5.alpha = 1
					daewha51.alpha = 1
					daewha51[1].alpha = 1
					script_5:addEventListener("touch",next)

				
	elseif color == "5" then
					local music = audio.loadStream( "음악/솔리 테마곡.mp3" )
 					audio.setVolume( loadedEndings.logValue )
    				audio.play(music)

					loadedSettings.green_num = loadedSettings.green_num + 1
					loadedSettings.limited_num = loadedSettings.limited_num + 1
					if loadedSettings.limited_num == 1 then
						loadedSettings.show6 = 1
					end
					if loadedSettings.friendship <101 then
                  		loadedSettings.friendship = loadedSettings.friendship + 8
						loadedSettings.friend_num = loadedSettings.friend_num + 1
               		end
					print(loadedSettings.friend_num)
					print("---5")
					loadsave.saveTable(loadedSettings, "settings.json")
					local i = 0
					local j = 0

					local function next1_1(event)

						if event.phase == "began" then
							
							if j == 0 then
								soli.alpha = 0
								nangam_soli.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha32[2].alpha = 0
								daewha32[3].alpha = 1
								j = j+1
								script_3.alpha = 1
								my_daesapan:removeEventListener("touch",next1_1)
								script_3:addEventListener("touch",next1_1)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)			
									loadedEndings.bgMusic = "음악/솔리 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)			
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					

					local function next1(event)
						if event.phase == "began" then
							loadedSettings.green = loadedSettings.green + 2
							loadsave.saveTable(loadedSettings,"settings.json")
							daewha31[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose31.alpha = 0
							choose32.alpha = 0
							daewha32[1].alpha = 0
							daewha33[1].alpha = 0
							daewha32[2].alpha = 1
							choose31:removeEventListener("touch",next1)
							script_3.alpha = 0
							my_daesapan:addEventListener("touch",next1_1)
						end

					end

					local function next1_2(event)

						if event.phase == "began" then
							
							if j == 0 then
								
								soli.alpha = 0
								happy_soli.alpha = 1
								my_daesapan.alpha = 0
								my.alpha = 0
								daewha33[2].alpha = 0
								daewha33[3].alpha = 1
								j = j+1
								script_3.alpha = 1
								my_daesapan:removeEventListener("touch",next1_2)
								script_3:addEventListener("touch",next1_2)
							else
								print("out"..loadedSettings.script2)
								if loadedSettings.script2 == 0 then
									print("script2 = 0일때")
									loadedSettings.script2 = 1
									loadsave.saveTable(loadedSettings, "settings.json")
									composer.setVariable("color", color)			
									loadedEndings.bgMusic = "음악/솔리 테마곡.mp3"
        							loadsave.saveTable(loadedEndings,"endings.json")
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("zcompliment_script",options)
	               				elseif loadedSettings.script2 == 1 then
	               					print("script2 = 1일때")
									composer.setVariable("color", color)			
									audio.pause(music)
									composer.removeScene("viewmonth2_script")
	               					composer.gotoScene("view01Map",options)
	               				end
							end
						end
					end

					local function next2(event)
						if event.phase == "began" then
							loadedSettings.green = loadedSettings.green + 5
							loadsave.saveTable(loadedSettings,"settings.json")				
							daewha31[2].alpha = 0
							my_daesapan.alpha=1
							my.alpha = 1
							choose31.alpha = 0
							choose32.alpha = 0
							daewha33[1].alpha = 0
							daewha32[1].alpha = 0
							daewha33[2].alpha = 1
							choose32:removeEventListener("touch",next1)
							script_3.alpha = 0
							my_daesapan:addEventListener("touch",next1_2)
						end

					end

					local function next(event)
						if event.phase == "began" then

							

							if i == 0 then
								
								daewha31[1].alpha = 0
								--my_daesapan.alpha = 1
								daewha31[2].alpha = 1
								i=i+1

							else
								
								script_3:removeEventListener("touch",next)
								choose31.alpha = 1
								daewha32[1].alpha = 1
								daewha32[1]:setFillColor(1)
								daewha32[1].size=36
								daewha32[1].anchorX,daewha32[1].anchorY = 0.5,0.5
								daewha32[1].x,daewha32[1].y = display.contentWidth*0.23,display.contentHeight*0.47
				
								choose32.alpha = 1
								daewha33[1].alpha = 1
								daewha33[1]:setFillColor(1)
								daewha33[1].size=36
								daewha33[1].anchorX,daewha33[1].anchorY = 0.5,0.5
								daewha33[1].x,daewha33[1].y = display.contentWidth*0.77,display.contentHeight*0.47

								choose31:addEventListener("touch",next1)
								choose32:addEventListener("touch",next2)

							end
						end
					end


					background_3.alpha = 1
					soli.alpha = 1
					script_3.alpha = 1
					daewha31.alpha = 1
					daewha31[1].alpha = 1
					script_3:addEventListener("touch",next)
	end
			-- 초록마을 이동


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

return scene