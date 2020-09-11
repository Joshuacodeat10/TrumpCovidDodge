--[[
    TitleScreenState Class
    
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The TitleScreenState is the starting screen of the game, shown on startup. It should
    display "Press Enter" and also our highest score.
]]

TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:init()
    -- nothing
end

function TitleScreenState:update(dt)
    if love.keyboard.wasPressed('space') or love.mouse.wasPressed(1) then
        gStateMachine:change('countdown')
    end
end

function TitleScreenState:render()
    love.graphics.setColor(0, 0, 255)
    love.graphics.setFont(flappyFont)
    love.graphics.printf("SuperTrump ", 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Tap to help Trump avoid Covid19 attack', 0, 100, VIRTUAL_WIDTH, 'center')
end