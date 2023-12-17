--카드 뒤집기 게임 진행하는 화면

local composer = require( "composer" )
local scene = composer.newScene()


local i, j = 0, 0
local isFinished = 0
local card = {}
local rand = {}
local count = {}

-- GUI

local background 
local backUI = {}
local gameUI = {}

function scene:create( event )
	local sceneGroup = self.view


	
---배경화면
	local background = display.newImageRect("이미지/미니게임/미니게임_초록마을/미니게임_카드게임 배경(초록마을).png", display.contentWidth, display.contentHeight)
	background.x, background.y = display.contentWidth/2, display.contentHeight/2
	sceneGroup:insert(background)--그룹

--점수
	local score = display.newImageRect("이미지/미니게임/미니게임_코인창.png", display.contentWidth/9.3, display.contentHeight/4.26)
	score.anchorX, score.anchorY =0,0
	score.x,score.y = display.contentWidth/33.166, display.contentHeight/13.2482826

	local score1 = 0 
	local showScore = display.newText(5,display.contentWidth/12,display.contentHeight/5.555,"font/잘풀리는오늘 Medium.ttf") 
	showScore:setFillColor(0) 
	showScore.size = 80

	local coin=0


--타이머
	local time = display.newImageRect("이미지/미니게임/미니게임_시간타이머.png", display.contentWidth/7.91, display.contentHeight/3.78)
	time.anchorX, time.anchorY =0,0
	time.x,time.y = display.contentWidth/1.180, display.contentHeight/21.53
	

	local limit = 25
	local showLimit = display.newText(limit,display.contentWidth/1.1,display.contentHeight/5.555,"font/잘풀리는오늘 Medium.ttf")
	
	showLimit:setFillColor(0)
	showLimit.size = 80
	
	
	--local function timeAttack( event )
   	 --	print( "listener called" )
	--end
	local function timeAttack( event )
		limit = limit - 1
		showLimit.text = limit

		if limit == 0 then
			timer.cancel(time1)
			--composer.setVariable("result", 0)
			if(score1<=5) then
				coin=5
			end
			if(score1>5) then
				coin=15
			end
			if(score1==8) then
				coin=25
			end
			composer.setVariable("score2", coin)
			composer.removeScene("view21card")
			composer.gotoScene("view22card")
		end
	end
	 
	time1 = timer.performWithDelay( 1000, timeAttack,0)


	gameUI[0] = graphics.newImageSheet( "이미지/미니게임/미니게임_초록마을/미니게임_카드게임 카드모음(초록마을).png", {width=144, height=227, numFrames=10} ) ---수정필요
	

	backUI[1] = display.newImageRect(gameUI[0], 1, 143, 227)
	backUI[1].x, backUI[1].y = display.contentWidth/2 - backUI[1].width*3.5, display.contentHeight/2.06 - backUI[1].height/2 
	backUI[2] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[2].x, backUI[2].y = backUI[1].x+backUI[1].width + display.contentWidth*0.0260, backUI[1].y 
	backUI[3] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[3].x, backUI[3].y = backUI[2].x+backUI[1].width+display.contentWidth*0.0260, backUI[1].y
	backUI[4] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[4].x, backUI[4].y = backUI[3].x+backUI[1].width+display.contentWidth*0.0260, backUI[1].y
	backUI[5] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[5].x, backUI[5].y = backUI[4].x+backUI[1].width+display.contentWidth*0.0260, backUI[1].y
	backUI[6] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[6].x, backUI[6].y = backUI[5].x+backUI[1].width+display.contentWidth*0.0260, backUI[1].y
	backUI[7] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[7].x, backUI[7].y = backUI[2].x, backUI[1].y - display.contentHeight * 0.23148148
	backUI[8] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[8].x, backUI[8].y = backUI[5].x, backUI[1].y - display.contentHeight * 0.23148148

	backUI[9] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[9].x, backUI[9].y = backUI[1].x, backUI[1].y+backUI[1].height + display.contentHeight*0.018518
	backUI[10] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[10].x, backUI[10].y = backUI[2].x, backUI[9].y
	backUI[11] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[11].x, backUI[11].y = backUI[3].x, backUI[9].y
	backUI[12] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[12].x, backUI[12].y = backUI[4].x, backUI[9].y
	backUI[13] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[13].x, backUI[13].y = backUI[5].x, backUI[9].y
	backUI[14] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[14].x, backUI[14].y = backUI[6].x, backUI[9].y
	backUI[15] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[15].x, backUI[15].y = backUI[11].x, backUI[9].y + display.contentHeight * 0.23148148 --수정필요
	backUI[16] = display.newImageRect(gameUI[0], 1, backUI[1].width, backUI[1].height)
	backUI[16].x, backUI[16].y = backUI[12].x, backUI[9].y + display.contentHeight * 0.23148148 --수정필요

	

	for i = 1, 16, 1 do
		backUI[i].name = i;
	end

	count[0] = 0 --시도 횟수
	count[1] = 100 --성공확률
	count[2] = 0 --성공횟수
	count[3] = 0 --실패횟수



	function resetCardCount()
		card[0] = 0
		card[1] = 999
		card[2] = 777
		isFinished = 1
	end

	function isLastCard( c1, c2 )
		for i = 1, 16, 1 do
			if (i ~= c1 and i ~= c2 and rand[i] ~= 0) then
				return 0
			end
		end
		return 1
	end

	function clickBackUI( event )
		j = event.target.name
		
		if (backUI[j].alpha ~= 0 and isFinished == 1 and card[1] ~= j) then
			card[0] = card[0] + 1
			
			if (card[0] <= 2) then
				isFinished = 0

				transition.to( gameUI[j], { time=200, alpha=1 } )
				transition.to( gameUI[j], { time=200, delay=200, xScale=1 } )
				transition.to( backUI[j], { time=200, xScale=0 } )
				transition.to( backUI[j], { time=200, delay=200, alpha=0 } )

				if (card[0] == 1) then
					card[1] = j
					isFinished = 1

				elseif (card[0] == 2) then
					card[2] = j
					count[0] = count[0] + 1
					

					if(rand[card[1]] == rand[card[2]]) then
						rand[card[1]] = 0
						rand[card[2]] = 0
						count[2] = count[2] + 1
						
						--점수 1점
						score1 = score1 + 1
							if(score1<=5) then
								showScore.text=5
							end
							if(score1>5) then
								showScore.text=15
							end
							if(score1==8) then
								showScore.text=25
							end
						print(score1)
						
						if (isLastCard(card[1], card[2]) == 1) then
							transition.to( gameUI[card[1]], { time=100, x=display.contentWidth/2, y=display.contentHeight/2 } )
							transition.to( gameUI[card[2]], { time=100, x=display.contentWidth/2, y=display.contentHeight/2 } )
							transition.to( gameUI[card[1]], { time=100, delay=100, width=gameUI[card[1]].width*2, height=gameUI[card[1]].height*2 } )
							transition.to( gameUI[card[2]], { time=100, delay=100, width=gameUI[card[1]].width*2, height=gameUI[card[1]].height*2 } )
							transition.to( backUI[21], { time=100, delay=110, alpha=1 } )
							transition.cancel()
							if(score1<=5) then
								coin=5
							end
							if(score1>5) then
								coin=15
							end
							if(score1==8) then
								coin=25
							end
							composer.setVariable("score2", coin)
							composer.removeScene("view21card")
							composer.gotoScene("view22card")
						else
							transition.to( backUI[card[1]], { time=200, delay=400, alpha=0 } )
							transition.to( backUI[card[2]], { time=200, delay=400, alpha=0 } )
							transition.to( gameUI[card[1]], { time=200, delay=600, alpha=0 } )
							transition.to( gameUI[card[2]], { time=200, delay=600, alpha=0, onComplete=resetCardCount } )
						end
					else
						count[3] = count[3] + 1
						
						transition.to( backUI[card[1]], { time=200, delay=700, alpha=1 } )
						transition.to( backUI[card[1]], { time=200, delay=700, xScale=1 } )
						transition.to( gameUI[card[1]], { time=200, delay=600, xScale=0 } )
						transition.to( gameUI[card[1]], { time=200, delay=600, alpha=0 } )

						transition.to( backUI[card[2]], { time=200, delay=700, alpha=1 } )
						transition.to( backUI[card[2]], { time=200, delay=700, xScale=1 } )
						transition.to( gameUI[card[2]], { time=200, delay=600, xScale=0 } )
						transition.to( gameUI[card[2]], { time=200, delay=600, alpha=0, onComplete=resetCardCount } )
					end
				end
			end
		end
	end

	function createGameUI()
		for i = 1, 8, 1 do
			rand[i] = i + 1;
			rand[i+8] = i + 1;
		end

		for i = 1, 8, 1 do
			j = math.floor(math.random(1, 16));
			rand[0] = rand[i];
			rand[i] = rand[j];
			rand[j] = rand[0];
		end

		for i = 1, 16, 1 do
			gameUI[i] = display.newImageRect(gameUI[0], rand[i], backUI[1].width, backUI[1].height)
			gameUI[i].x, gameUI[i].y = backUI[i].x, backUI[i].y
			transition.to( backUI[i], { time=1000, delay=1000, xScale=0 } )
			transition.to( backUI[i], { time=1000, delay=2000, xScale=1, onComplete=resetCardCount } )
			transition.to( gameUI[i], { time=1000, delay=1000, xScale=0 } )
			transition.to( gameUI[i], { time=1000, delay=1500, alpha=0 } )
			backUI[i]:addEventListener( "tap", clickBackUI )
		end
	end
	createGameUI()


	
 
	sceneGroup:insert( background )
    for i = 1, 16, 1 do
		sceneGroup:insert( backUI[i] )--그룹
		sceneGroup:insert( gameUI[i] )
	end
  	sceneGroup:insert(showScore)--그룹
	sceneGroup:insert(score)--그룹
	sceneGroup:insert(time)--그룹
	sceneGroup:insert(showLimit)--그룹			
    sceneGroup:insert(showScore)--그룹
end
function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
	elseif phase == "did" then
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene